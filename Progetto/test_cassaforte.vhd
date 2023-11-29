--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:56:24 12/20/2019
-- Design Name:   
-- Module Name:   /home/ise/Xilinx_Project/cassaforte/test_cassaforte.vhd
-- Project Name:  cassaforte
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gest_cassaforte
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
 
ENTITY test_cassaforte IS
END test_cassaforte;
 
ARCHITECTURE behavior OF test_cassaforte IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gest_cassaforte
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         key_1 : IN  std_logic_vector(0 to 3);
         key_2 : IN  std_logic_vector(0 to 3);
         s_key_1 : IN  std_logic;
         s_key_2 : IN  std_logic;
         sens_porta : IN  std_logic;
         apertura : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal key_1 : std_logic_vector(0 to 3) := (others => '0');
   signal key_2 : std_logic_vector(0 to 3) := (others => '0');
   signal s_key_1 : std_logic := '0';
   signal s_key_2 : std_logic := '0';
   signal sens_porta : std_logic := '0';

 	--Outputs
   signal apertura : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gest_cassaforte PORT MAP (
          clk => clk,
          rst => rst,
          key_1 => key_1,
          key_2 => key_2,
          s_key_1 => s_key_1,
          s_key_2 => s_key_2,
          sens_porta => sens_porta,
          apertura => apertura
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst<='1';
      wait for 100 ns;	
		rst<='0';
      wait for clk_period*10;
		s_key_1<='1';
		wait for 10 ns;
		key_1<="0100";
		wait for 100 ns;
		s_key_2<='1';
		key_2<="0010";
		wait for 100 ns;
		s_key_1<='0';
		s_key_2<='0';
		sens_porta<='1';
		wait for 10 ns;
		sens_porta<='0';
      -- insert stimulus here 

      wait;
   end process;

END;
