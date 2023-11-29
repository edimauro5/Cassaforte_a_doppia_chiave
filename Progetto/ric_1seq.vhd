----------------------------------------------------------------------------------
-- Company: Gruppo 29
-- Engineer: Di Mauro Enrico Maria 0612704486
-- 
-- Create Date:    11:07:26 12/20/2019 
-- Design Name: 
-- Module Name:    ric_1seq - Behavioral 
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

entity ric_1seq is
Generic(
	seq : std_logic_vector(0 to 3) :="0000"		--sequenza generica da riconoscere
);
Port(
	En : in std_logic;
	I_seq : in std_logic_vector(0 to 3);
	
	o : out std_logic
);
end ric_1seq;

architecture Behavioral of ric_1seq is

begin

process(En,I_seq)
begin
	if seq=I_seq and En='1' then
		o<='1';
	else
		o<='0';
	end if;

end process;


end Behavioral;

