library ieee;
use ieee.std_logic_1164.all;

entity decoder38 is
	port(
	A: in std_logic_vector (2 downto 0);
	B:out std_logic_vector (7 downto 0));
end decoder38;

architecture arch_decoder38 of decoder38 is
begin
	process(A)
	begin
		case A is
			when "000" => B <= "00000001";
			when "001" => B <= "00000010";
			when "010" => B <= "00000100";
			when "011" => B <= "00001000";
			when "100" => B <= "00010000";
			when "101" => B <= "00100000";
			when "110" => B <= "01000000";
			when "111" => B <= "10000000";
			when others => null;
		end case;
	end process;
end arch_decoder38;
			