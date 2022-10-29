library ieee;
use ieee.std_logic_1164.all;

entity seq_gen1_tb is
end seq_gen1_tb;

architecture arch_seq_gen1_tb of seq_gen1_tb is
	component seq_gen1 is
	port (
		clk: in std_logic;
		reset: in std_logic;
		seq1: out std_logic);
	end component;
	signal clk, reset, seq1: std_logic;
begin
	u_tb: seq_gen1 port map(clk, reset, seq1);
	p1: process
		begin
		clk <= '0';
		wait for 20 ns;
		clk <= '1';
		wait for 20 ns;
		end process;
	
end arch_seq_gen1_tb;