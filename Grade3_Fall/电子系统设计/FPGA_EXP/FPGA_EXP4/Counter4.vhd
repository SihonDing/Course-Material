library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Counter4 is
	port (clk: in std_logic;
	q: out std_logic_vector (1 downto 0)
	);
end Counter4;

architecture arch_Counter4 of Counter4 is
	signal tmp_q: std_logic_vector(1 downto 0) := "00";
begin
	q <= tmp_q;
	process(clk)
	begin
		if (clk'event and clk='1') then
			if (tmp_q="11") then
				tmp_q <= "00";
			else 
				tmp_q <= tmp_q + 1;
			end if;
		end if;
	end process;
end arch_Counter4;