library ieee;
use ieee.std_logic_1164.all;

entity decoder47 is
	port(
	A: in std_logic_vector (3 downto 0);
	B: out std_logic_vector (7 downto 0));
end decoder47;

architecture arch_decoder47 of decoder47 is
begin
	with A select
		B <= "00000011" when "0000", 
			  "10011111" when "0001",
			  "00100101" when "0010",
			  "00001101" when "0011",
			  "10011001" when "0100",
			  "01001001" when "0101",
			  "01000001" when "0110",
			  "00011111" when "0111",
			  "00000001" when "1000",
			  "00001001" when "1001",
			  "11111110" when others;
end arch_decoder47;