library ieee;
use ieee.std_logic_1164.all;

entity decoder24 is
	port(
	A: in std_logic_vector (1 downto 0);
	B:out std_logic_vector (3 downto 0));
end decoder24;

architecture arch_decoder24 of decoder24 is
begin
	process(A)
	begin
		case A is
			when "00" => B <= "1110";
			when "01" => B <= "1101";
			when "10" => B <= "1011";
			when "11" => B <= "0111";
			when others => null;
		end case;
	end process;
end arch_decoder24;
			