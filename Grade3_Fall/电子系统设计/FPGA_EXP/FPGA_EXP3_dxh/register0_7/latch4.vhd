library ieee;
use ieee.std_logic_1164.all;

entity latch4 is
	port(
	D: in std_logic_vector(3 downto 0);
	en,cs: in std_logic;
	Q: out std_logic_vector(3 downto 0));
end latch4;

architecture arch_latch4 of latch4 is
begin
	process(cs, en)
	begin
		if (cs='1' and en='1') then
			Q <= D;
		end if;
	end process;
end arch_latch4;
