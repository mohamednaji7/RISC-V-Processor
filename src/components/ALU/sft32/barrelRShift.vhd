library ieee;
use ieee.std_logic_1164.all;

entity barrelRShift is 
port(sftIn:in std_logic;x:in std_logic_vector(31 downto 0); z:out std_logic_vector(31 downto 0);sftSz:in std_logic_vector(4 downto 0));
end barrelRShift;

architecture desc of barrelRShift is
	component sh32bit_R_16p_sftIn port(sftIn:in std_logic;x:in std_logic_vector(31 downto 0); z:out std_logic_vector(31 downto 0));end component;
	component sh32bit_R_8p_sftIn port(sftIn:in std_logic;x:in std_logic_vector(31 downto 0); z:out std_logic_vector(31 downto 0));end component;
	component sh32bit_R_4p_sftIn port(sftIn:in std_logic;x:in std_logic_vector(31 downto 0); z:out std_logic_vector(31 downto 0));end component;
	component sh32bit_R_2p_sftIn port(sftIn:in std_logic;x:in std_logic_vector(31 downto 0); z:out std_logic_vector(31 downto 0));end component;
	component sh32bit_R_1p_sftIn port(sftIn:in std_logic;x:in std_logic_vector(31 downto 0); z:out std_logic_vector(31 downto 0));end component;
	
	signal MUXout0,MUXout1,MUXout2,MUXout3,MUXout4,Z16p,Z8p,Z4p,Z2p,Z1p: std_logic_vector(31 downto 0);
	
	begin
		--// test for x 00110101100111101111100010111001
		--//stage 4th bit
		shift16p: sh32bit_R_16p_sftIn port map (sftIn,x,Z16p); 
		MUXout0 <= Z16p when sftSz(4)= '1' 
				else x;
		
		--//stage 3rd bit
		shift8p:  sh32bit_R_8p_sftIn port map  (sftIn,MUXout0,Z8p);
		MUXout1 <= Z8p when sftSz(3) = '1' 
				else MUXout0;
		
		--//stage 2nd bit
		shift4p:  sh32bit_R_4p_sftIn port map  (sftIn,MUXout1,Z4p);
		MUXout2 <= Z4p when sftSz(2) = '1' 
				else MUXout1;
				
		--//stage 1st bit
		shift2p:  sh32bit_R_2p_sftIn port map  (sftIn,MUXout2,Z2p);
		MUXout3 <= Z2p when sftSz(1) = '1' 
				else MUXout2;
				
		--//stage 0st bit
		shift1p:  sh32bit_R_1p_sftIn port map  (sftIn,MUXout3,Z1p);
		MUXout4 <= Z1p when sftSz(0) = '1' 
				else MUXout3;
				
		--//final out
		z<= MUXout4;
	end desc;