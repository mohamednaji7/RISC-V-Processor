library ieee;
use ieee.std_logic_1164.all;

entity sft32 is
port(
	--modify tag:0xa0c2d3 to be -- 00,10 is leftL, 01 is rightL, 11 is rightArth
							--@date: Monday, February 15, 2021
							--			Date in Badr, Nabel Al Wakad
							--@commit:n4jiDX

	sftType:in std_logic_vector(1 downto 0); -- 00,01 is leftL, 10 is rightL, 11 is rightArth tag:0xa0c2d3
	x:in std_logic_vector(31 downto 0);
	z:out std_logic_vector(31 downto 0); 
	sftSz:in std_logic_vector(4 downto 0));
end sft32;

architecture desc of sft32 is
	component barrelRShift
		port(sftIn:in std_logic;x:in std_logic_vector(31 downto 0); z:out std_logic_vector(31 downto 0);sftSz:in std_logic_vector(4 downto 0));
	end component;
	component rotate 
		port(x:in std_logic_vector(31 downto 0); f:out std_logic_vector(31 downto 0));
	end component;
	
	signal xToIn,xR,xShifted,xShiftedR: std_logic_vector(31 downto 0);
	signal sftIn: std_logic;
	
	begin --//test value 00110101100111101111100010111001
		sftIn<= sftType(1) and sftType(0) and x(31) ;
		rotateX: rotate port map (x,xR);
		xToIn <= xR when sftType(0)='0' --when left  
				else x;
		shifting: barrelRShift port map (sftIn,xToIn,xShifted,sftSz);
		rotate_xShifted: rotate port map(xShifted,xShiftedR);
		z <= xShiftedR when sftType(0)='0' --when left
				else xShifted;

	end desc;