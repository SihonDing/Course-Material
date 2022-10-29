library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Div50MHz is
	port(clk: in std_logic;
	clkout: out std_logic
	);
end Div50MHz;

architecture arch_Div50MHz of Div50MHz is
	signal cnt: integer range 0 to 24999;
	signal tmp_clk: std_logic;
begin
	process(clk)
	begin
		if(clk'event and clk = '1') then
			if (cnt = 24999) then
				cnt <= 0;
				tmp_clk <= NOT tmp_clk;
			else
				cnt <= cnt + 1;
			end if;
		end if;
	end process;
	clkout <= tmp_clk;
end arch_Div50MHz;