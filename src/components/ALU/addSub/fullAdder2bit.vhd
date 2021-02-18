library ieee;
use ieee.std_logic_1164.all;

entity fullAdder2bit is
port(cin:in std_logic; a,b:in std_logic_vector(1 downto 0); cout:out std_logic; s:out std_logic_vector(1 downto 0));
end fullAdder2bit ;

architecture desc of fullAdder2bit is
	--//this copy of the fullAdder2bit is modified to splet the s2_0 to cout ant s1_0
	component full_adder port(cin,a,b:in std_logic;cout,s:out std_logic);end component;
	signal csig:std_logic;
	begin
		bit0: full_adder port map (cin, a(0),b(0),csig,s(0));
		bit1: full_adder port map (csig,a(1),b(1),cout,s(1));
	end desc;