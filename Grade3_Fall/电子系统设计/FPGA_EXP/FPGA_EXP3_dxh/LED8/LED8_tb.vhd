library ieee;
use ieee.std_logic_1164.all;

entity LED8_tb is
end entity;

architecture arch_LED8_tb of LED8_tb is
	component LED8
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
	end component;
	
	signal d0, d1, d2 ,d3, d4, d5, d6, d7: std_logic_vector(3 downto 0) := "0000";
	signal segment: std_logic_vector(7 downto 0);
	signal LED_cs: std_logic_vector(7 downto 0);
	signal clk: std_logic;
	signal num: std_logic_vector(2 downto 0);
begin
	u_tb: LED8 port map (clk, d0, d1, d2, d3, d4, d5, d6, d7, segment, num, LED_cs);
	
	process
	begin
	clk <= '0';
	wait for 20 ns;
	clk <= '1';
	wait for 20 ns;
	end process;

end arch_LED8_tb;