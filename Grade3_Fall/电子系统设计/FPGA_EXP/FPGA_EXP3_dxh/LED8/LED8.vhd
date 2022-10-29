library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity LED8 is
	port(clk: in std_logic;
	d0: in std_logic_vector(3 downto 0);
	d1: in std_logic_vector(3 downto 0);
	d2: in std_logic_vector(3 downto 0);
	d3: in std_logic_vector(3 downto 0);
	d4: in std_logic_vector(3 downto 0);
	d5: in std_logic_vector(3 downto 0);
	d6: in std_logic_vector(3 downto 0);
	d7: in std_logic_vector(3 downto 0);
	segment: out std_logic_vector(7 downto 0);
	num: out std_logic_vector(2 downto 0);
	LED_cs: out std_logic_vector(7 downto 0)
	);
end LED8;

architecture arch_LED8 of LED8 is
	component Div50MHz
		port(clk: in std_logic;
		clkout: out std_logic
		);
	end component;
	
	component Counter8
		port (clk: in std_logic;
		q: out std_logic_vector (2 downto 0)
		);
	end component;
	
	component decoder38
		port(
		A: in std_logic_vector (2 downto 0);
		B:out std_logic_vector (7 downto 0)
		);
	end component;
	
	component selector81
		port(d0: in std_logic_vector(3 downto 0);
		d1: in std_logic_vector(3 downto 0);
		d2: in std_logic_vector(3 downto 0);
		d3: in std_logic_vector(3 downto 0);
		d4: in std_logic_vector(3 downto 0);
		d5: in std_logic_vector(3 downto 0);
		d6: in std_logic_vector(3 downto 0);
		d7: in std_logic_vector(3 downto 0);
		s: in std_logic_vector(2 downto 0);
		q: out std_logic_vector(3 downto 0) 
		);
	end component;
	
	component decoder47
		port(
		A: in std_logic_vector (3 downto 0);
		B: out std_logic_vector (7 downto 0));
	end component;
	
	signal clk_tmp: std_logic;
	signal num_tmp: std_logic_vector(2 downto 0);
	signal data_tmp: std_logic_vector(3 downto 0);
begin
	u1: Div50MHz port map (clk, clk_tmp);
	u2: Counter8 port map (clk_tmp, num_tmp);
	u3: decoder38 port map (num_tmp, LED_cs);
	u4: selector81 port map (d0, d1, d2, d3, d4, d5, d6, d7, num_tmp, data_tmp);
	u5: decoder47 port map (data_tmp, segment);
	num <= num_tmp;
end arch_LED8;