library ieee;
use ieee.std_logic_1164.all;


entity fullAdder32bit is
port(cin:in std_logic; a,b:in std_logic_vector(31 downto 0); s:out std_logic_vector(31 downto 0));--//there is no cOut here the o/p is just 32bit
end fullAdder32bit;

architecture desc of fullAdder32bit is
	component fullAdder16bit 
		port(cin:in std_logic; a,b:in std_logic_vector(15 downto 0);cout:out std_logic; s:out std_logic_vector(15 downto 0));
	end component;
	
	signal 	dummy,carInt:std_logic;

	begin 
		bit0toF: fullAdder16bit port map (cin,a(15 downto 0),b(15 downto 0),carInt,s(15 downto 0));
		bit16to31: fullAdder16bit port map (carInt,a(31 downto 16),b(31 downto 16),dummy,s(31 downto 16));
		--//overflow maybe occuar
	end desc;