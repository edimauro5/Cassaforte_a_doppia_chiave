----------------------------------------------------------------------------------
-- Company: Gruppo 29
-- Engineer: Di Mauro Enrico Maria 0612704486
-- 
-- Create Date:    15:55:48 11/21/2019 
-- Design Name: 
-- Module Name:    table - Dataflow 
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
use IEEE.std_logic_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity seg_disp is
	port
	(
		i :in unsigned(0 to 3);
		o :out STD_Logic_vector(0 to 6)
	);
end seg_disp;

architecture Dataflow of seg_disp is

begin

with i select
	o<= 	"1111110" when "0000",
			"0110000" when "0001",
			"1101101" when "0010",
			"1111001" when "0011",
			"0110011" when "0100",
			"1011011" when "0101",
			"1011111" when "0110",
			"1110000" when "0111",
			"1111111" when "1000",
			"1111011" when "1001",
			"1110111" when "1010",
			"0011111" when "1011",
			"1001110" when "1100",
			"0111101" when "1101",
			"1001111" when "1110",
			"1000111" when "1111",
			"-------" when others;

end Dataflow;

