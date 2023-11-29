----------------------------------------------------------------------------------
-- Company: Gruppo 29
-- Engineer: Di Mauro Enrico Maria 0612704486 
-- 
-- Create Date:    17:39:48 12/29/2019 
-- Design Name: 
-- Module Name:    Cassaforte - Structural
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

entity Cassaforte is
Generic(
	seq1 : std_logic_vector(0 to 3) :="0011";		--sequenze di default da riconoscere, ma che possono
	seq2 : std_logic_vector(0 to 3) :="1000"		--essere definite in fase di test
);
Port(
		clk,rst : in std_logic;
		key_1 : in std_logic_vector(0 to 3);
		key_2 : in std_logic_vector(0 to 3);
		s_key_1,s_key_2,sens_porta: in std_logic;
		
		apertura : out std_logic;
		segmenti: out std_logic_vector(0 to 6)
);
end Cassaforte;

architecture Structural of Cassaforte is
--definizione dell'entity del contatore
	component contatore is
	Generic(
		n : integer := 10
	);
	Port(
		Clk,Rst : in std_logic;
		En : in std_logic;
	
		o : out std_logic
	
	);
	end component;

	component ric_1seq is
		Generic(
			seq : std_logic_vector(0 to 3) :="0000"
		);
	Port(
			En : in std_logic;
			I_seq : in std_logic_vector(0 to 3);
	
			o : out std_logic
	);
	end component;

	component seg_disp is
	port
	(
		i :in unsigned(0 to 3);
		o :out STD_Logic_vector(0 to 6)
	);
	end component;
	
	component gest_cassaforte is
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
	end component;

	signal timeout,En_cont : std_logic;
	signal Ric1,Ric2 :std_logic_vector(0 to 1);
	signal disp: unsigned(0 to 3);

begin
	--istanziazione del contatore che fa da timer
	count: contatore generic map(n=>10) port map(clk,rst,En_cont,timeout);
	--istanziazione dei riconoscitore per la prima chiave
	--il primo per riconoscere la 1 sequenza, il 2 per riconoscere la seconda
	ric1_1: ric_1seq generic map(seq=>seq1) port map(s_key_1,key_1,ric1(0));
	ric2_1: ric_1seq generic map(seq=>seq2) port map(s_key_1,key_1,ric1(1));
	--istanziazione dei riconoscitore per la seconda chiave
	--il primo per riconoscere la 1 sequenza, il 2 per riconoscere la seconda
	ric1_2: ric_1seq generic map(seq=>seq1) port map(s_key_2,key_2,ric2(0));
	ric2_2: ric_1seq generic map(seq=>seq2) port map(s_key_2,key_2,ric2(1));
	--istanziazione del gestore cassaforte (automa)
	gest_cass: gest_cassaforte port map(clk,rst,ric1,ric2,sens_porta,timeout,apertura,disp,En_cont);
	--istanziazione del controller per il display a 7 segmenti
	display: seg_disp port map(disp,segmenti);

end Structural;

