library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity seq_gen1 is
	port (
		clk: in std_logic;
		reset: in std_logic;
		seq1: out std_logic);
end seq_gen1;

architecture arch_gen1 of seq_gen1 is
	type states is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14);
	signal st: states;
begin
	process(clk, reset)
	begin
		if(reset='0') then
			st <= s0;
		elsif(clk'event and clk='1') then
			case st is
			when s0 =>
				st <= s1;
			when s1 =>
				st <= s2;
			when s2 =>
				st <= s3;
			when s3 =>
				st <= s4;
			when s4 =>
				st <= s5;
			when s5 =>
				st <= s6;
			when s6 =>
				st <= s7;
			when s7 =>
				st <= s8;
			when s8 =>
				st <= s9;
			when s9 =>
				st <= s10;
			when s10 =>
				st <= s11;
			when s11 =>
				st <= s12;
			when s12 =>
				st <= s13;
			when s13 =>
				st <= s14;
			when s14 =>
				st <= s0;
			end case;
		end if;
	end process;
	seq1 <= 
		'0' when st=s0 else
		'1' when st=s1 else
		'1' when st=s2 else
		'1' when st=s3 else
		'0' when st=s4 else
		'1' when st=s5 else
		'1' when st=s6 else
		'1' when st=s7 else
		'0' when st=s8 else
		'1' when st=s9 else
		'0' when st=s10 else
		'0' when st=s11 else
		'1' when st=s12 else
		'1' when st=s13 else
		'0';
end arch_gen1;