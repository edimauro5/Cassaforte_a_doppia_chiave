--------------------------------------------------------------------------------
-- Company: Gruppo 29
-- Engineer: Di Mauro Enrico Maria 0612704486
--
-- Create Date:   18:34:05 12/29/2019
-- Design Name:   
-- Module Name:   /home/ise/Xilinx_Project/cassaforte/test_cass_finale.vhd
-- Project Name:  cassaforte
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Cassaforte
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
 
ENTITY test_cass_finale IS
END test_cass_finale;
 
ARCHITECTURE behavior OF test_cass_finale IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
   COMPONENT Cassaforte
	 Generic(
		seq1 : std_logic_vector(0 to 3);
		seq2 : std_logic_vector(0 to 3) 
	   );
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         key_1 : IN  std_logic_vector(0 to 3);
         key_2 : IN  std_logic_vector(0 to 3);
         s_key_1 : IN  std_logic;
         s_key_2 : IN  std_logic;
         sens_porta : IN  std_logic;
         apertura : OUT  std_logic;
			segmenti : OUT std_logic_vector(0 to 6)
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
	signal segmenti : std_logic_vector(0 to 6);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
	
	-- costanti che ci permettono di definire le chiavi da riconoscere
	constant s1 : std_logic_vector(0 to 3):="0010";
	constant s2 : std_logic_vector(0 to 3):="1000"; 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
	
   uut: Cassaforte 
	GENERIC MAP(
			seq1=>s1,
			seq2=>s2
		)
	PORT MAP (
          clk => clk,
          rst => rst,
          key_1 => key_1,
          key_2 => key_2,
          s_key_1 => s_key_1,
          s_key_2 => s_key_2,
          sens_porta => sens_porta,
          apertura => apertura,
			 segmenti => segmenti
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
	
		--ASSERT PER FAR S CHE LE 2 CHIAVI SIANO OBBLIGATORIAMENTE DIFFERENTI
		assert s1/=s2 report "le chiavi devono essere differenti" severity error;
		
      -- hold reset state for 100 ns.
		rst<='1';
      wait for 100 ns;	
		rst<='0';
      wait for clk_period*10;
		
		--sequenza START-RIC_SEC-APRO-APERTA-START
		s_key_1<='1';
		key_1<="1000";
		wait for 10 ns;
		s_key_2<='1';
		key_2<="0010";
		wait for 10 ns;
		sens_porta<='1';
		wait for 10 ns;
		s_key_1<='0';
		s_key_2<='0';
		wait for 10 ns;
		sens_porta<='0';
		wait for 10 ns;
		-----------------------------------------
--fase di reset
		rst<='1';
		s_key_1<='0';
		key_1<="0000";
		s_key_2<='0';
		key_2<="0000";
		sens_porta<='0';
      wait for 100 ns;	
		rst<='0';
      wait for clk_period*10;
		-- sequenza START-RIC_SEC(dopo 10 cicli di clock)-ANOMALIA-START
		s_key_1<='1';
		key_1<="1000";
		wait for 120 ns;
		s_key_2<='1';
		key_2<="0010";
		wait for 10 ns;
		s_key_1<='0';
		s_key_2<='0';

      wait;
   end process;

END;
