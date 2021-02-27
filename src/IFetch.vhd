library ieee;
use ieee.std_logic_1164.all;

entity IFetch is
	port(	clk			:	in		std_logic;
			reset_to_0	: 	in 	std_logic;  
			nextPC		:	in		std_logic_vector(31 downto 0);
			currentPC	:	out	std_logic_vector(31 downto 0);
			Instruction	:	out 	std_logic_vector(31 downto 0) );
	end IFetch;

architecture behavior of IFetch is
	component Inst_Memory 
		Generic (RAM_width: intEGER := 32;
					RAM_depth: intEGER := 256 );
		port(
			clk	:	IN		STD_logic;
			Add	:	IN		std_logic_vector(RAM_width-1 downto 0);
			RD		:	OUT	std_logic_vector(RAM_width-1 downto 0));
		end component;
	component PC_Reg
		port(	
				clk		:	in		std_logic;
				reset 	: 	in 	std_logic;  
				nextPC	:	in 	std_logic_vector(31 downto 0);
				PC			:	out 	std_logic_vector(31 downto 0)  );
		end component;
	signal cPC	:	std_logic_vector(31 downto 0) ;
	begin
		wiring	:	PC_Reg 		port map(clk,reset_to_0,nextPC,cPC);
		wiring2	:	Inst_Memory port map(clk,cPC,Instruction);
		currentPC <=cPC;
	end behavior;