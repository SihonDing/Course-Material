library ieee;
use ieee.std_logic_1164.all;

entity decoder47 is
	port(
	A: in std_logic_vector (3 downto 0);
	B: out std_logic_vector (6 downto 0));
end decoder47;

architecture arch_decoder47 of decoder47 is
begin
	process(A)
	begin
		case A is
			when "0000" => B <= "1001111";
			when "0001" => B <= "0010010";
			when "0010" => B <= "0000110";
			when "0011" => B <= "0001000";
			when "0100" => B <= "1001100";
			when "0101" => B <= "0100100";
			when "0110" => B <= "0100000";
			when "0111" => B <= "1100000";
			when "1000" => B <= "0001111";
			when "1001" => B <= "0000000";
			when "1010" => B <= "0000100";
			when "1011" => B <= "0110001";
			when "1100" => B <= "1111110";
			when "1101" => B <= "0000001";
			when "1110" => B <= "1111110";
			when "1111" => B <= "1000010";
			when others => null;
		end case;
	end process;
end arch_decoder47;