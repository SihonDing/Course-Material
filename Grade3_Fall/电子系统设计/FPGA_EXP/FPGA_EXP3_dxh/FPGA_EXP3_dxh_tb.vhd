library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP3_dxh_tb is
end FPGA_EXP3_dxh_tb;

architecture arch_FPGA_EXP3_dxh_tb of FPGA_EXP3_dxh_tb is
	component FPGA_EXP3_dxh
		port(sel: in std_logic_vector (2 downto 0);
		datain: in std_logic_vector(3 downto 0);
		en: in std_logic;
		clk: in std_logic;
		LED_cs: out std_logic_vector(7 downto 0);
		segment: out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal sel: std_logic_vector(2 downto 0);
	signal datain: std_logic_vector(3 downto 0);
	signal clk: std_logic;
	signal en: std_logic;
	signal LED_cs: std_logic_vector(7 downto 0);
	signal segment: std_logic_vector(7 downto 0);
begin
	u_tb: FPGA_EXP3_dxh port map (sel, datain, en, clk, LED_cs, segment);
	p1: process
	begin
		sel <= "000";
		datain <= "0001";
		wait for 100 ns;
		sel <= "001";
		datain <= "0010";
		wait for 100 ns;
		sel <= "010";
		datain <= "0011";
		wait for 100 ns;
		sel <= "011";
		datain <= "0100";
		wait for 100 ns;
		sel <= "100";
		datain <= "0101";
		wait for 100 ns;
		sel <= "101";
		datain <= "0110";
		wait for 100 ns;
		sel <= "110";
		datain <= "0111";
		wait for 100 ns;
		sel <= "111";
		datain <= "1000";
		wait for 100 ns;
	end process;
	
	p2: process
	begin
		en <= '0';
		wait for 40 ns;
		en <= '1';
		wait for 20 ns;
		en <= '0';
		wait for 40 ns;
	end process;
	
	p3: process
	begin
	clk <= '0';
	wait for 10 ns;
	clk <= '1';
	wait for 10 ns;
	end process;
	
end arch_FPGA_EXP3_dxh_tb;