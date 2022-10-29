library ieee;
use ieee.std_logic_1164.all;

entity selector is
	port(
		sel: in std_logic;
		seq_1: in std_logic;
		seq_2: in std_logic;
		seq: out std_logic);
end selector;

architecture arch_select of selector is
begin
	seq <=
		seq_1 when sel='0' else
		seq_2;
end arch_select;