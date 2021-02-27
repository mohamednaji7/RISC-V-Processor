library ieee;
use ieee.std_logic_1164.all;

entity PC_add1 is 
	port (x: 	in 	std_logic_vector(31 downto 0);
			z: 	out	std_logic_vector(31 downto 0) );
end entity;

architecture desc of PC_add1 is
	signal f,c:std_logic_vector(31 downto 0);
	begin
	c(0)<=x(0);
	wiringC:for i in 1 to 31  generate
		begin
		c(i)<= c(i-1) and x(i) ;
	end generate;
	
	f(0)<= not x(0);
	wiringS:for i in 1 to 31  generate
		begin
		f(i)<= c(i-1) xor x(i) ;
	end generate;
	z <= f; 
	end desc;