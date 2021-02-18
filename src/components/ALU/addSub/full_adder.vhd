	library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
port(cin,a,b:in std_logic;cout,s:out std_logic);
end full_adder;

architecture desc of full_adder is
	begin
		s<= cin xor a xor b; --parity fn
		cout<= (a and b ) or (cin and a) or (cin and b) ; --majority fn
	end desc;