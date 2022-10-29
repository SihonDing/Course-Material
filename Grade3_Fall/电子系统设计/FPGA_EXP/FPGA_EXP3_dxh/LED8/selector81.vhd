library ieee;
use ieee.std_logic_1164.all;

entity selector81 is
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
end selector81;

architecture arch_selector81 of selector81 is
begin
	with s select
	q <= d0 when "000", 
		  d1 when "001",
	     d2 when "010",
		  d3 when "011",
		  d4 when "100",
		  d5 when "101",
		  d6 when "110",
		  d7 when "111",
		  "XXXX" when others;
end arch_selector81;