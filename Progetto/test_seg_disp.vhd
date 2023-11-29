--------------------------------------------------------------------------------
-- Company: Gruppo 29
-- Engineer: Di Mauro Enrico Maria 0612704486
--
-- Create Date:   18:09:56 01/23/2020
-- Design Name:   
-- Module Name:   /home/ise/xilinxproject/cassafortefinale/tbdisplay.vhd
-- Project Name:  cassaforte
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: seg_disp
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_seg_disp IS
END test_seg_disp;
 
ARCHITECTURE behavior OF test_seg_disp IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seg_disp
    PORT(
         i : IN  unsigned(0 to 3);
         o : OUT std_logic_vector(0 to 6)
        );
    END COMPONENT;
    

   --Inputs
   signal i : unsigned(0 to 3) := (others => '0');

 	--Outputs
   signal o : std_logic_vector(0 to 6);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seg_disp PORT MAP (
          i => i,
          o => o
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


     for k in 0 to 15 loop
	     i<=conv_unsigned(k,4);
	     wait for 10 ns;
	  end loop;

      wait;
   end process;

END;
