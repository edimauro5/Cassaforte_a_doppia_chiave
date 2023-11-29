----------------------------------------------------------------------------------
-- Company: Gruppo 29
-- Engineer: Di Mauro Enrico Maria 0612704486
-- 
-- Create Date:    15:07:19 12/20/2019 
-- Design Name: 
-- Module Name:    contatore - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contatore is
Generic(
	n : integer := 10
);
Port(
	Clk,Rst : in std_logic;
	En : in std_logic;
	
	o : out std_logic
	
);
end contatore;

architecture Behavioral of contatore is
	signal c : integer range 0 to n;
begin

process(clk)
begin
	if rising_edge(clk) then
		if Rst='1' or En='0' then
			c<=0;
			o<='0';
		elsif En='1' and c<n then
			o<='0';
			c<=c+1;
		else
			c<=c;
			o<='1';
		end if;
	end if;
end process;

end Behavioral;

