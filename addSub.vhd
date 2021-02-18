library ieee;
use ieee.std_logic_1164.all;

entity addSub is
port(isSub:in std_logic; a,b:in std_logic_vector(31 downto 0); s:out std_logic_vector(31 downto 0));
end addSub;

architecture desc of addSub is
	
	component fullAdder32bit
		port(cin:in std_logic; a,b:in std_logic_vector(31 downto 0); s:out std_logic_vector(31 downto 0));
	end component;
	
	signal cIn:std_logic;
	signal bIn:std_logic_vector(31 downto 0);
	
	begin
		bIn<= not b when isSub='1'
			else b;
		cIn<= isSub ;
		wiring: fullAdder32bit port map (cIn,a,bIn,s);
		
	end desc;
	