--------------------------------------------------------------------------------
-- Company: Gruppo 29
-- Engineer: Di Mauro Enrico Maria 0612704486
--
-- Create Date:   17:36:00 01/23/2020
-- Design Name:   
-- Module Name:   /home/ise/Xilinx_Project/cassafortefinale/test_gest_cassaforte.vhd
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
USE ieee.std_logic_arith.ALL; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_gest_cassaforte IS
END test_gest_cassaforte;
 
ARCHITECTURE behavior OF test_gest_cassaforte IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gest_cassaforte
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         ric1 : IN  std_logic_vector(0 to 1);
         ric2 : IN  std_logic_vector(0 to 1);
         sens_porta : IN  std_logic;
         timeout : IN  std_logic;
         apertura : OUT  std_logic;
         disp : OUT  unsigned(0 to 3);
         En_cont : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal ric1 : std_logic_vector(0 to 1) := (others => '0');
   signal ric2 : std_logic_vector(0 to 1) := (others => '0');
   signal sens_porta : std_logic := '0';
   signal timeout : std_logic := '0';
	signal temp_in : std_logic_vector(0 to 5);
 	--Outputs
   signal apertura : std_logic;
   signal disp : unsigned(0 to 3);
   signal En_cont : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
	
	procedure test_START(signal temp_in : OUT std_logic_vector(0 to 5);
								signal rst : OUT std_logic) is
	begin
	
		rst<='1';
		wait for clk_period*10;
	
	-- test stato START		
		for i in 0 to 63 loop
			temp_in<=conv_std_logic_vector(i,6);
			rst<='0';
			wait for 10 ns;
			rst<='1';
			wait for 20 ns;
				
		end loop;
	-- fine test stato START
	
	end test_START;
	
	procedure test_RIC_SEC(signal temp_in : OUT std_logic_vector(0 to 5);
								signal rst : OUT std_logic) is
	begin
	
		rst<='1';
		wait for clk_period*10;
		
		
	-- test stato RIC_SEC
		for i in 0 to 63 loop
			temp_in<="010000";
			rst<='0';
			wait for 10 ns;
			temp_in<=conv_std_logic_vector(i,6);
			wait for 10 ns;
			rst<='1';
			wait for 20 ns;
		end loop;
	-- fine test stato RIC_SEC
	
	end test_RIC_SEC;

	procedure test_ANOMALIA(signal temp_in : OUT std_logic_vector(0 to 5);
								signal rst : OUT std_logic) is
	begin
	
		rst<='1';
		wait for clk_period*10;
		
		
	-- test stato ANOMALIA	
		for i in 0 to 63 loop
			temp_in<="000001";
			rst<='0';
			wait for 10 ns;
			temp_in<=conv_std_logic_vector(i,6);
			wait for 10 ns;
			rst<='1';
			wait for 20 ns;
		end loop;	
	-- fine test stato ANOMALIA
	
	end test_ANOMALIA;
	
	procedure test_APRO(signal temp_in : OUT std_logic_vector(0 to 5);
								signal rst : OUT std_logic) is
	begin
	
		rst<='1';
		wait for clk_period*10;
		
	-- test stato APRO
		for i in 0 to 63 loop
			temp_in<="011000";
			rst<='0';
			wait for 10 ns;
			temp_in<=conv_std_logic_vector(i,6);
			wait for 10 ns;
			rst<='1';
			wait for 20 ns;
		end loop;
	-- fine test stato APRO
		
	end test_APRO;
	
	procedure test_APERTA(signal temp_in : OUT std_logic_vector(0 to 5);
								signal rst : OUT std_logic) is
	begin
	
		rst<='1';
		wait for clk_period*10;
		
		
	-- test stato APERTA		
		for i in 0 to 63 loop
			temp_in<="011000";
			rst<='0';
			wait for 10 ns;
			temp_in<="000001";
			wait for 10 ns;
			temp_in<=conv_std_logic_vector(i,6);
			wait for 10 ns;
			rst<='1';
			wait for 20 ns;
		end loop;			
	-- fine test stato APERTA
		
	end test_APERTA;
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gest_cassaforte PORT MAP (
          clk => clk,
          rst => rst,
          ric1 => ric1,
          ric2 => ric2,
          sens_porta => sens_porta,
          timeout => timeout,
          apertura => apertura,
          disp => disp,
          En_cont => En_cont
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
		temp_in<="000000";
		rst<='1';
      wait for 100 ns;	
		rst<='0';
      wait for clk_period*10;
		
		--per testare ogni singolo stato lasciare decommentato quello desiderato
		
		test_START (temp_in,rst);
		--test_RIC_SEC (temp_in,rst);
		--test_ANOMALIA (temp_in,rst);
		--test_APRO (temp_in,rst);
		--test_APERTA (temp_in,rst);
		
      wait;
   end process;
	
	ric1 <= temp_in(0) & temp_in(1);
   ric2 <= temp_in(2) & temp_in(3);
	timeout <= temp_in(4);
   sens_porta <= temp_in(5);
	
END;
