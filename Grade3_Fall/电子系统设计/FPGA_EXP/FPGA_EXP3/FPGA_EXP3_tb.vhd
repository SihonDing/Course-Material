library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP3_tb is
end FPGA_EXP3_tb;

architecture arch_FPGA_EXP3_tb of FPGA_EXP3_tb is
	component FPGA_EXP3 is
	port(
		clk: in std_logic;
		reset: in std_logic;
		sel: in std_logic;
		seq_output: out std_logic;
		detector_out: out std_logic);
	end component;
	signal clk, reset, sel, seq_output, detector_out: std_logic;
begin
	u_tb: FPGA_EXP3 port map(clk, reset, sel, seq_output, detector_out);
	p1: process
		begin
		clk <= '0';
		wait for 20 ns;
		clk <= '1';
		wait for 20 ns;
		end process;
	p2: process
		begin
		sel <= '0';
		wait for 2500ns;
		sel <= '1';
		wait for 2500ns;
		end process;
end arch_FPGA_EXP3_tb;