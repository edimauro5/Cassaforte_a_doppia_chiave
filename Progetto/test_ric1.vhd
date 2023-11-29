--------------------------------------------------------------------------------
-- Company: Gruppo 29
-- Engineer: Di Mauro Enrico Maria 0612704486
--
-- Create Date:   11:19:05 12/20/2019
-- Design Name:   
-- Module Name:   /home/ise/Xilinx_Project/cassaforte/test_ric1.vhd
-- Project Name:  cassaforte
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ric_1seq
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
USE ieee.std_logic_arith.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_ric1 IS
END test_ric1;
 
ARCHITECTURE behavior OF test_ric1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ric_1seq
	 GENERIC(
		seq : std_logic_vector(0 to 3)
	 );
    PORT(
         En : IN  std_logic;
         I_seq : IN  std_logic_vector(0 to 3);
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal En : std_logic := '0';
   signal I_seq : std_logic_vector(0 to 3) := (others => '0');

 	--Outputs
   signal o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ric_1seq 
	GENERIC MAP(seq=>"0010") --sequenza da riconoscere
	PORT MAP (
          En => En,
          I_seq => I_seq,
          o => o
        );

  

   -- Stimulus process
   stim_proc: process
   begin		

     En<='1';
     wait for 10 ns;
	  
	  for i in 0 to 15 loop
			I_seq<=conv_std_logic_vector(i,4);
	      wait for 10ns;
	  end loop;

     wait for 20 ns;
	  En<='0';
     wait for 10ns;
	  
	  for i in 0 to 15 loop
			I_seq<=conv_std_logic_vector(i,4);
	      wait for 10ns;
	  end loop;

     wait;
   end process;
	
END;
