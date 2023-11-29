----------------------------------------------------------------------------------
-- Company: Gruppo 29
-- Engineer: Di Mauro Enrico Maria 0612704486
-- 
-- Create Date:    20:14:37 12/20/2019 
-- Design Name: 
-- Module Name:    gest_cassaforte - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity gest_cassaforte is
Port(
		clk,rst : in std_logic;
		ric1 : in std_logic_vector(0 to 1);
		ric2 : in std_logic_vector(0 to 1);
		sens_porta: in std_logic;
		timeout: in std_logic;
		
		apertura : out std_logic;
		disp: out unsigned(0 to 3);
		En_cont: out std_logic
);
end gest_cassaforte;

architecture Behavioral of gest_cassaforte is



	type stato is(start,ric_sec,anomalia,apro,aperta);
	signal c_s,n_s :stato;

	signal temp_in : std_logic_vector(0 to 5);	--vettore temporaneo che concatena gli ingressi in modo da facilitare la scrittura delle transizioni di stato
	signal temp_out : std_logic_vector(0 to 1);	--vettore temporaneo in cui vengono inserite le uscite per poi essere assegnate alle uscite del modulo

begin
	
	temp_in<=ric1 & ric2 & timeout & sens_porta;	--concatenazione ingressi

	process(clk)	--processo che memorizza lo stato corrente e gestisce il reset
	begin

		if rising_edge(clk) then
			if rst='1' then
				c_s<=start;
			else
				c_s<=n_s;
			end if;
		end if;

	end process;

	process(c_s,temp_in)		--processo che produce il next state e le uscite per Moore
	begin
		case c_s is
			when start=>
						disp<=conv_unsigned(10,4);
						temp_out<="00" ;
						
						if temp_in="000000" then
							n_s<=start;
						elsif temp_in="010000" or temp_in="010100" or temp_in="000100" or temp_in="100000" or temp_in="101000" or temp_in="001000" then
							n_s<=ric_sec;
						elsif temp_in="011000" or temp_in="100100" then
							n_s<=apro;
						else
							n_s<=anomalia;
						end if;
			when ric_sec=>
						disp<=conv_unsigned(11,4);
						temp_out<="01";
							  
						if temp_in="010000" or temp_in="010100" or temp_in="000100" or temp_in="100000" or temp_in="101000" or temp_in="001000" then
							n_s<=ric_sec;
						elsif temp_in="011000" or temp_in="100100" then
							n_s<=apro;
						elsif temp_in="000000" then
							n_s<=start;
						else 
							n_s<=anomalia;
						end if;
			when anomalia=>
						disp<=conv_unsigned(14,4);
						temp_out<="00";

						if temp_in="000000"  then
							n_s<=start;
						else
							n_s<=anomalia;
						end if;
			when apro=>
						disp<=conv_unsigned(12,4);
						temp_out<="10";

						if temp_in(5)='1' and temp_in(4)='0' then
							n_s<=aperta;
						elsif temp_in(5)='0' and temp_in(4)='0' then
							n_s<=apro;
						else 
							n_s<=anomalia;
						end if;
			when aperta=>
						disp<=conv_unsigned(13,4);
						temp_out<="10";
						
						if temp_in="000000" then
							n_s<=start;
						else 
							n_s<=aperta;
						end if;
		end case;
	end process;
--assegnazione delle uscite temporanee e quelle effettive del modulo
	En_cont<=temp_out(1);
	apertura<=temp_out(0);

end Behavioral;

