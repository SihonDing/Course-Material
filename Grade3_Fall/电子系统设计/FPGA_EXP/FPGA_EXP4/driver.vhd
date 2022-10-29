library ieee;
use ieee.std_logic_1164.all;

entity driver is
	port(
	column: in std_logic_vector(3 downto 0);
	row: in std_logic_vector(3 downto 0);
	clk: in std_logic;
	state: out std_logic_vector(3 downto 0)
	);
end driver;

architecture arch_driver of driver is
begin
	process(clk, column, row)
	begin 
	if (clk'event and clk='1') then
		case row is
			when "1110" => 
				case column is
					when "1110" => state <= "0000";
					when "1101" => state <= "0001";
					when "1011" => state <= "0010";
					when "0111" => state <= "0011";
					when others => null;
				end case;
			when "1101" =>
				case column is
					when "1110" => state <= "0100";
					when "1101" => state <= "0101";
					when "1011" => state <= "0110";
					when "0111" => state <= "0111";
					when others => null;
				end case;
			when "1011" =>
				case column is
					when "1110" => state <= "1000";
					when "1101" => state <= "1001";
					when "1011" => state <= "1010";
					when "0111" => state <= "1011";
					when others => null;
				end case;
			when "0111" =>
				case column is
					when "1110" => state <= "1100";
					when "1101" => state <= "1101";
					when "1011" => state <= "1110";
					when "0111" => state <= "1111";
					when others => null;
				end case;
			when others => null;
		end case;
		end if;
	end process;
end arch_driver;