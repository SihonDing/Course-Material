library ieee;
use ieee.std_logic_1164.all;

entity debounce is
	port(raw: in std_logic_vector(3 downto 0);
	clk: in std_logic;
	de: out std_logic_vector(3 downto 0)
	);
end debounce;

architecture arch_debounce of debounce is
signal KL3, KL2, KL1, KL0: integer range 0 to 49;
signal KH3, KH2 ,KH1, KH0: integer range 0 to 49;
begin
	p3: process(clk)
	begin
		if (clk'event and clk='1') then
			if(raw(3)='1') then
				if (KH3 = 49) then
					KH3 <= 0;
					de(3) <= '1';
				else
					KH3 <= KH3 + 1;
				end if;
			else
				if (KL3 = 49) then
					KL3 <= 0;
					de(3) <= '0';
				else
					KL3 <= KL3 + 1;
				end if;
			end if;
		end if;
	end process;

	p2: process(clk)
	begin
		if (clk'event and clk='1') then
			if(raw(2)='1') then
				if (KH2 = 49) then
					KH2 <= 0;
					de(2) <= '1';
				else
					KH2 <= KH2 + 1;
				end if;
			else
				if (KL2 = 49) then
					KL2 <= 0;
					de(2) <= '0';
				else
					KL2 <= KL2 + 1;
				end if;
			end if;
		end if;
	end process;
	
	p1: process(clk)
	begin
		if (clk'event and clk='1') then
			if(raw(1)='1') then
				if (KH1 = 49) then
					KH1 <= 0;
					de(1) <= '1';
				else
					KH1 <= KH1 + 1;
				end if;
			else
				if (KL1 = 49) then
					KL1 <= 0;
					de(1) <= '0';
				else
					KL1 <= KL1 + 1;
				end if;
			end if;
		end if;
	end process;

	p0: process(clk)
	begin
		if (clk'event and clk='1') then
			if(raw(0)='1') then
				if (KH0 = 49) then
					KH0 <= 0;
					de(0) <= '1';
				else
					KH0 <= KH0 + 1;
				end if;
			else
				if (KL0 = 49) then
					KL0 <= 0;
					de(0) <= '0';
				else
					KL0 <= KL0 + 1;
				end if;
			end if;
		end if;
	end process;
end arch_debounce;
