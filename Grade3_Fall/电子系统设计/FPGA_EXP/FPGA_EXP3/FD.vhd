library ieee;
use ieee.std_logic_1164.all;

entity FD is
	port(clk: in std_logic;
	newclk: out std_logic
	);
end FD;

architecture arch_FD of FD is
	signal num:integer range 0 to 24999999;
begin
	process(clk)
	begin
		if(clk'event and clk = '1') then
			if (num = 24999999) then
				num <= 0;
			elsif (num < 12500000) then
				newclk <= '0';
				num <= num + 1;
			else
				newclk <= '1';
				num <= num + 1;
			end if;
		end if;
	end process;
end arch_FD;