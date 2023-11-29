--------------------------------------------------------------------------------
-- Company: Gruppo 29
-- Engineer: Di Mauro Enrico Maria 0612704486
--
-- Create Date:   15:37:54 12/20/2019
-- Design Name:   
-- Module Name:   /home/ise/Xilinx_Project/cassaforte/test_cont.vhd
-- Project Name:  cassaforte
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: contatore
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_cont IS
END test_cont;
 
ARCHITECTURE behavior OF test_cont IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
	 
    COMPONENT contatore
	 GENERIC(
			n : integer 
	 );
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         En : IN  std_logic;
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';
   signal En : std_logic := '0';

 	--Outputs
   signal o : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: contatore 
		GENERIC MAP(
			n=>10
		)
		PORT MAP (
          Clk => Clk,
          Rst => Rst,
          En => En,
          o => o
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst<='1';
      wait for 100 ns;	
		rst<='0';
      wait for Clk_period*10;
		
	
      -- insert stimulus here 
      rst<='0';
		en<='0';
		wait for 120 ns;
		rst<='0'; --caso in cui il contatore  abilitato
		en<='1';
		wait for 120 ns;
		rst<='1';
		en<='0';
		wait for 120 ns;
	   rst<='1';
		en<='1';
		
      wait;

   end process;

END;
