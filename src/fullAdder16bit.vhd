library ieee;
use ieee.std_logic_1164.all;


entity fullAdder16bit is
port(cin:in std_logic; a,b:in std_logic_vector(15 downto 0);cout:out std_logic; s:out std_logic_vector(15 downto 0));
end fullAdder16bit;

architecture desc of fullAdder16bit is
	component fullAdder8bit 
		port(cin:in std_logic; a,b:in std_logic_vector(7 downto 0);cout:out std_logic; s:out std_logic_vector(7 downto 0));
	end component;
	
	signal 	carInt:std_logic;

	begin 
		bit0to7: fullAdder8bit port map (cin,a(7 downto 0),b(7 downto 0),carInt,s(7 downto 0));
		bit8toF: fullAdder8bit port map (carInt,a(15 downto 8),b(15 downto 8),cout,s(15 downto 8));
	end desc;