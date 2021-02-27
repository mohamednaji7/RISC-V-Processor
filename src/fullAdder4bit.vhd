library ieee;
use ieee.std_logic_1164.all;


entity fullAdder4bit is
port(cin:in std_logic; a,b:in std_logic_vector(3 downto 0);cout:out std_logic; s:out std_logic_vector(3 downto 0));
end fullAdder4bit;

architecture desc of fullAdder4bit is
	component fullAdder2bit 
		port(cin:in std_logic; a,b:in std_logic_vector(1 downto 0); cout:out std_logic; s:out std_logic_vector(1 downto 0));
	end component;
	
	signal 	carInt:std_logic;
	
	begin 
		bit01: fullAdder2bit port map (cin,a(1 downto 0),b(1 downto 0),carInt,s(1 downto 0));
		bit23: fullAdder2bit port map (carInt,a(3 downto 2),b(3 downto 2),cout,s(3 downto 2));
	end desc;