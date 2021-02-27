library ieee;
use ieee.std_logic_1164.all;

entity ltu32 is
port(a,b:in std_logic_vector(31 downto 0); a_lt_b:out std_logic);--a_lt_b is 1 if a < b 
end ltu32;

architecture desc of ltu32 is
	
	component cmp1bit port(ai,bi,eqip1,ltip1:in std_logic; eqi,lti:out std_logic); end component;
	
	signal eqn,ltn: std_logic;
	signal eq,lt: std_logic_vector(31 downto 0); 
	
	begin
			--//test value 00110101100111101111100010111001
        --//assuming the n non existing bit is it's eq is 1
		eqn<='1';
		ltn<='0';
		
		--//gen. the loop to write the code for timeless coding 
		bits31: cmp1bit port map(a(31),b(31),eqn,ltn,eq(31),lt(31));
		
		bits30: cmp1bit port map(a(30),b(30),eq(31),lt(31),eq(30),lt(30));
		bits29: cmp1bit port map(a(29),b(29),eq(30),lt(30),eq(29),lt(29));
		bits28: cmp1bit port map(a(28),b(28),eq(29),lt(29),eq(28),lt(28));
		bits27: cmp1bit port map(a(27),b(27),eq(28),lt(28),eq(27),lt(27));
		bits26: cmp1bit port map(a(26),b(26),eq(27),lt(27),eq(26),lt(26));
		bits25: cmp1bit port map(a(25),b(25),eq(26),lt(26),eq(25),lt(25));
		bits24: cmp1bit port map(a(24),b(24),eq(25),lt(25),eq(24),lt(24));
		bits23: cmp1bit port map(a(23),b(23),eq(24),lt(24),eq(23),lt(23));
		bits22: cmp1bit port map(a(22),b(22),eq(23),lt(23),eq(22),lt(22));
		bits21: cmp1bit port map(a(21),b(21),eq(22),lt(22),eq(21),lt(21));
		bits20: cmp1bit port map(a(20),b(20),eq(21),lt(21),eq(20),lt(20));
		bits19: cmp1bit port map(a(19),b(19),eq(20),lt(20),eq(19),lt(19));
		bits18: cmp1bit port map(a(18),b(18),eq(19),lt(19),eq(18),lt(18));
		bits17: cmp1bit port map(a(17),b(17),eq(18),lt(18),eq(17),lt(17));
		bits16: cmp1bit port map(a(16),b(16),eq(17),lt(17),eq(16),lt(16));
		bits15: cmp1bit port map(a(15),b(15),eq(16),lt(16),eq(15),lt(15));
		bits14: cmp1bit port map(a(14),b(14),eq(15),lt(15),eq(14),lt(14));
		bits13: cmp1bit port map(a(13),b(13),eq(14),lt(14),eq(13),lt(13));
		bits12: cmp1bit port map(a(12),b(12),eq(13),lt(13),eq(12),lt(12));
		bits11: cmp1bit port map(a(11),b(11),eq(12),lt(12),eq(11),lt(11));
		bits10: cmp1bit port map(a(10),b(10),eq(11),lt(11),eq(10),lt(10));
		bits09: cmp1bit port map(a(9),b(9),  eq(10),lt(10),eq(9),lt(9));
		bits08: cmp1bit port map(a(8),b(8),  eq(9),lt(9),eq(8),lt(8));
		bits07: cmp1bit port map(a(7),b(7),  eq(8),lt(8),eq(7),lt(7));
		bits06: cmp1bit port map(a(6),b(6),  eq(7),lt(7),eq(6),lt(6));
		bits05: cmp1bit port map(a(5),b(5),  eq(6),lt(6),eq(5),lt(5));
		bits04: cmp1bit port map(a(4),b(4),  eq(5),lt(5),eq(4),lt(4));
		bits03: cmp1bit port map(a(3),b(3),  eq(4),lt(4),eq(3),lt(3));
		bits02: cmp1bit port map(a(2),b(2),  eq(3),lt(3),eq(2),lt(2));
		bits01: cmp1bit port map(a(1),b(1),  eq(2),lt(2),eq(1),lt(1));
		bits00: cmp1bit port map(a(0),b(0),  eq(1),lt(1),eq(0),lt(0));
		
		a_lt_b <= lt(0);	
		
		end desc;