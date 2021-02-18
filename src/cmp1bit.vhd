library ieee;
use ieee.std_logic_1164.all;

entity cmp1bit is
port(ai,bi,eqip1,ltip1:in std_logic; eqi,lti:out std_logic);
end cmp1bit;

architecture desc of cmp1bit is
	signal a_eq_b,a_lt_b: std_logic;
	begin	
		a_eq_b <= not (ai xor bi);
		eqi <= eqip1 and a_eq_b;
		
		a_lt_b <= not ai and bi;
		lti <= ltip1 or (eqip1 and a_lt_b);
	end desc;