library ieee;
use ieee.std_logic_1164.all;

entity FD_tb is
end FD_tb;

architecture arch_FD_tb of FD_tb is
	component FD is
		port(clk: in std_logic;
		newclk: out std_logic
		);
	end component;
	signal clk, newclk: std_logic;
	
begin
	u_tb: FD port map(clk, newclk);
	p1: process
		begin
		clk <= '0';
		wait for 20 ns;
		clk <= '1';
		wait for 20 ns;
		end process;
end arch_FD_tb;
