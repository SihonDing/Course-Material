library ieee;
use ieee.std_logic_1164.all;

entity seq_detector is
	port (
		clk: in std_logic;
		reset: in std_logic;
		datainput: in std_logic;
		detector_out: out std_logic);
end seq_detector;

architecture arch_seq_detector of seq_detector is
	type states is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9);
	signal st: states := s0;
begin
	process(clk, reset)
	begin
		if(reset='0') then
			st <= s0;
		elsif(clk'event and clk='1') then
			case st is
				when s0 =>
					if(datainput='1') then 
						st <= s1;
					else st <= s0;
					end if;
				when s1 =>
					if(datainput='1') then
						st <= s2;
					else st <=s0;
					end if;
				when s2 =>
					if(datainput='1') then
						st <= s3;
					else st <=s0;
					end if;
				when s3 =>
					if(datainput='0') then
						st <= s4;
					else st <=s3;
					end if;
				when s4 =>
					if(datainput='1') then
						st <= s5;
					else st <=s0;
					end if;
				when s5 =>
					if(datainput='0') then
						st <= s6;
					else st <=s2;
					end if;
				when s6 =>
					if(datainput='0') then
						st <= s7;
					else st <=s1;
					end if;
				when s7 =>
					if(datainput='1') then
						st <= s8;
					else st <=s0;
					end if;
				when s8 =>
					if(datainput='1') then
						st <= s9;
					else st <=s0;
					end if;
				when s9 =>
					if(datainput='0') then
						st <= s1;
					else st <=s0;
					end if;
			end case;
		end if;
	end process;
	with st select
	detector_out <=
		'1' when s9,
		'0' when others;
end arch_seq_detector;