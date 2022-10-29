library ieee;
use ieee.std_logic_1164.all;

entity seq_gen2_tb is
end seq_gen2_tb;

architecture arch_seq_gen2_tb of seq_gen2_tb is
	component seq_gen2 is
	port (
		clk: in std_logic;
		reset: in std_logic;
		seq2: out std_logic);
	end component;
	signal clk, reset, seq2: std_logic;
begin
	u_tb: seq_gen2 port map(clk, reset, seq2);
	p1: process
		begin
		clk <= '0';
		wait for 20 ns;
		clk <= '1';
		wait for 20 ns;
		end process;
	
end arch_seq_gen2_tb;