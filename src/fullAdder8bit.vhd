library ieee;
use ieee.std_logic_1164.all;


entity fullAdder8bit is
port(cin:in std_logic; a,b:in std_logic_vector(7 downto 0);cout:out std_logic; s:out std_logic_vector(7 downto 0));
end fullAdder8bit;

architecture desc of fullAdder8bit is
	component fullAdder4bit 
		port(cin:in std_logic; a,b:in std_logic_vector(3 downto 0);cout:out std_logic; s:out std_logic_vector(3 downto 0));
	end component;
	
	signal 	carInt:std_logic;

	begin 
		bit0123: fullAdder4bit port map (cin,a(3 downto 0),b(3 downto 0),carInt,s(3 downto 0));
		bit4567: fullAdder4bit port map (carInt,a(7 downto 4),b(7 downto 4),cout,s(7 downto 4));
	end desc;