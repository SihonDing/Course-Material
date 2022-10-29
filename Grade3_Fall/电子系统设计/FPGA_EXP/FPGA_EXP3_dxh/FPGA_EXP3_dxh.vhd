library ieee;
use ieee.std_logic_1164.all;

entity FPGA_EXP3_dxh is
	port(sel: in std_logic_vector (2 downto 0);
	datain: in std_logic_vector(3 downto 0);
	en: in std_logic;
	clk: in std_logic;
	LED_cs: out std_logic_vector(7 downto 0);
	segment: out std_logic_vector(7 downto 0)
	);
end FPGA_EXP3_dxh;

architecture arch_FPGA_EXP3_dxh of FPGA_EXP3_dxh is
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
		LED_cs: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component register0_7
		port (sel: in std_logic_vector(2 downto 0);
		datain: in std_logic_vector(3 downto 0);
		en: in std_logic;
		d0, d1, d2, d3, d4, d5, d6, d7: out std_logic_vector(3 downto 0)
		);
	end component;
	
	signal d0,d1,d2,d3,d4,d5,d6,d7: std_logic_vector(3 downto 0);
begin
	u1: register0_7 port map (sel, datain, en, d0, d1, d2, d3, d4, d5, d6, d7);
	u2: LED8 port map (clk, d0, d1, d2, d3, d4, d5, d6, d7, segment, LED_cs);
end arch_FPGA_EXP3_dxh;