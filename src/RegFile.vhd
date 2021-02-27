library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.to_integer;USE ieee.numeric_std.unsigned;

entity regFile is
	Generic(	FILE_len_Bits:	INTEGER 	:=5; 	--32 registers\
				FILE_len		:	INTEGER	:=32; 	--5  bits
				File_Width	:	INTEGER	:=32);
	port(	clk		:	in		std_logic;
			--//DECODE
			WE			:	in		std_logic;
			RP1,RP2	:	in		std_logic_Vector(FILE_len_Bits-1 downto 0);
			--//EXECUTE
			WP			:	in		std_logic_Vector(FILE_len_Bits-1 downto 0);
			WD 		:	in 	std_logic_Vector(File_Width-1 downto 0);
			RD1,RD2	:	out	std_logic_Vector(File_Width-1 downto 0));
	end entity;
	
architecture behavior of regFile is
	
	
	TYPE Registerss IS ARRAY (0 to FILE_len-1) OF std_logic_Vector(File_Width-1 downto 0) ;
	SIGNAL WP_INT,RP1_INT,RP2_INT : INTEGER Range 0 to FilE_len-1 ; 
	impure function Reg_Initiate_x0_ZER0 return Registerss is
		variable	Reg : Registerss;
		begin	
			Reg(0) := X"00000000" ;
			return Reg ;
		end function;
	SIGNAL RegFileInst : Registerss := Reg_Initiate_x0_ZER0 ;
	begin
	
		
	
		WP_INT <= to_integer(unsigned(WP));
		RP1_INT<= to_integer(unsigned(RP1));
		RP2_INT<= to_integer(unsigned(RP2));
		
		--READ IS COMBINATIONAL
		RD1 <= RegFileInst(RP1_INT);
		RD2 <= RegFileInst(RP2_INT);	
		
		
		--WRITE IS CLOCKED	
		process(clk)
			begin
			if rising_edge(clk) then
				
				if (WE = '1') then 
					REgFileInst(WP_INT) <=  WD;
					REgFileInst(0) <= X"00000000" ;--ENFORCING x0 --> 0
				END IF;
			END IF;
		END PRocess;			
	end behavior;
	
			
				
