library ieee;
use ieee.std_logic_1164.all;

entity lt32 is
port(isSigned:in std_logic; a,b:in std_logic_vector(31 downto 0); a_lt_b:out std_logic );--a_lt_b is 1 if a < b 
end lt32;

architecture desc of lt32 is
	
	component ltu32
		port(a,b:in std_logic_vector(31 downto 0); a_lt_b:out std_logic);--a_lt_b is 1 if a < b 
	end component;
	
	signal aa,bb: std_logic_vector(31 downto 0);
	
		--//test value 00110101100111101111100010111001
		--//test value 00000000000000000000000000000000
	begin 
		aa(31) <= not a(31) and b(31) when isSigned='1'
			else a(31);
		aa(30 downto 0) <= a(30 downto 0);

		bb(31) <= a(31) and not b(31) when isSigned='1'
			else b(31);
		bb(30 downto 0) <= b(30 downto 0);

		wiring: ltu32 port map(aa, bb, a_lt_b);
	end desc;