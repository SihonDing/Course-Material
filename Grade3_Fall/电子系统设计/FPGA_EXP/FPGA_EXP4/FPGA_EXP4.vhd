library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP4 is
	port(clk: in std_logic;
	segment: out std_logic_vector(6 downto 0);
	row: in std_logic_vector(3 downto 0);
	column: out std_logic_vector(3 downto 0);
	COM: out std_logic
	);
end FPGA_EXP4;

architecture arch_FPGA_EXP4 of FPGA_EXP4 is

--	component Div50MHz
--		port(clk: in std_logic;
--		clkout: out std_logic
--		);
--	end component;
--	
--	component debounce
--		port(raw: in std_logic_vector(3 downto 0);
--		clk: in std_logic;
--		de: out std_logic_vector(3 downto 0)
--		);
--	end component;

	component Counter4
		port (clk: in std_logic;
		q: out std_logic_vector (1 downto 0)
		);
	end component; 
	
	component decoder24
		port(
		A: in std_logic_vector (1 downto 0);
		B:out std_logic_vector (3 downto 0));
	end component;
	
	component driver
		port(
		column: in std_logic_vector(3 downto 0);
		row: in std_logic_vector(3 downto 0);
		clk: in std_logic;
		state: out std_logic_vector(3 downto 0)
		);
	 end component;
	 
	 component decoder47
		port(
		A: in std_logic_vector (3 downto 0);
		B: out std_logic_vector (6 downto 0));
	 end component;
	 
--	 signal newclk: std_logic;
--	signal row_de: std_logic_vector(3 downto 0);
	signal num: std_logic_vector(1 downto 0);
	signal state: std_logic_vector(3 downto 0);
	signal column_in: std_logic_vector(3 downto 0);
	
begin
--	u1: Div50MHz port map (clk, newclk);
--	u2: debounce port map (row, clk, row_de);
	u3: Counter4 port map (clk, num);
	u4: decoder24 port map (num, column_in);
	u5: driver port map (column_in, row, clk, state);
	u6: decoder47 port map (state, segment);
	column <= column_in;
	COM <= '1';
end arch_FPGA_EXP4;
	
	
	 
	