library ieee;
use ieee.std_logic_1164.all;

entity register0_7 is
	port (sel: in std_logic_vector(2 downto 0);
	datain: in std_logic_vector(3 downto 0);
	en: in std_logic;
	d0, d1, d2, d3, d4, d5, d6, d7: out std_logic_vector(3 downto 0)
	);
end register0_7;

architecture arch_register0_7 of register0_7 is
	component decoder38
		port(
		A: in std_logic_vector (2 downto 0);
		B:out std_logic_vector (7 downto 0)
		);
	end component;
	
	component latch4
		port(
		D: in std_logic_vector(3 downto 0);
		en,cs: in std_logic;
		Q: out std_logic_vector(3 downto 0));
	end component;
	
	signal tmp_cs: std_logic_vector(7 downto 0);

begin
u0: latch4 port map (datain, en, tmp_cs(0), d0);
u1: latch4 port map (datain, en, tmp_cs(1), d1);
u2: latch4 port map (datain, en, tmp_cs(2), d2);
u3: latch4 port map (datain, en, tmp_cs(3), d3);
u4: latch4 port map (datain, en, tmp_cs(4), d4);
u5: latch4 port map (datain, en, tmp_cs(5), d5);
u6: latch4 port map (datain, en, tmp_cs(6), d6);
u7: latch4 port map (datain, en, tmp_cs(7), d7);
decode: decoder38 port map (sel, tmp_cs);
end arch_register0_7;