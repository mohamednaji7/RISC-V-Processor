library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--test this modification ????

entity alu is
port(
	Opcode:in std_logic_vector(2 downto 0); OpSignal:in std_logic;
		--//modification  
					--@date: Monday, February 15, 2021
					--			Date in Badr, Nabel Al Wakad
					--@commit:n4jiDX
		--copy the state 
		--//N4ji's Assembly
		
		--0x0	000	ADD/SUB -- if OpSignal:Sub
		--0x0 001	SLL
		
		--0x2	010	SLT
		--0x3	011	SLTU
		
		--0x4	100	XOR
		--0x5	101	SRL/SRA -- if OpSignal: Arth 
		
		--0x6	110	OR
		--0x7	111	AND
		
		--//modifying the table to be for 4 bits instruction encoding 
		--//when adding a new instruction be sure u test your ALU after it added @commit:n4jiDX
		
	a,b:in std_logic_vector(31 downto 0); 
	output: out std_logic_vector(31 downto 0));
end entity;

architecture desc of alu is
	component lt32 
		port(isSigned:in std_logic; a,b:in std_logic_vector(31 downto 0); a_lt_b:out std_logic );--a_lt_b is 1 if a < b 
		end component;
	
	component addSub
		port(isSub:in std_logic; a,b:in std_logic_vector(31 downto 0); s:out std_logic_vector(31 downto 0));
		end component;
		
	component sft32
		port(
			sftType:in std_logic_vector(1 downto 0); -- 00,01 is leftL, 10 is rightL, 11 is rightArth @tag:0xa0c2d3
			x:in std_logic_vector(31 downto 0);
			z:out std_logic_vector(31 downto 0); 
			sftSz:in std_logic_vector(4 downto 0));
		end component;

		
	signal AddSubR,AndR,OrR,XorR,Slt_sl4_Uns_Ext_32bit_R,ShiftingR:std_logic_vector(31 downto 0); --Dummy Results
	signal Slt_sl4_UnsR: std_logic;--Dummy Results
	
	
	signal isSigned,isSub: std_logic; --some internal wiring
	signal sftType:std_logic_vector(1 downto 0);--//     //
	
		
		
		--//test value 00110101100111101111100010111001
		--//test value 00000000000000000000000000000000
	begin
	
		--0x0	000	ADD/SUB
		isSub 	<= OpSignal;
		
		--0x2	010	SLT
		--0x3	011	SLTU		
		isSigned <= not OpCode(0);

		
		 -- 00,01 is leftL, 10 is rightL, 11 is rightArth  tag:0xa0c2d3
		--0x0 001	SLL
		--0x5	101	SRL/SRA -- if OpSignal: Arth 
		
		--bit for 		right 	bit for 		left	
		--Opcode(2)			1 						 0
		--OpSignal 		  01   					00			--modify tag:0xa0c2d3 to be -- 00,10 is leftL, 01 is rightL, 11 is rightArth
		--OpSignal 		  11   					10			
							--@date: Monday, February 15, 2021
							--			Date in Badr, Nabel Al Wakad
							--@commit:n4jiDX
							--modification: DONE
							--test sft32 ?????
							sftType <= OpSignal & OpCode(2);
		
		Adding_Subing	: addSub port map (isSub,a,b,AddSubR);
		set_a_less_b	: lt32 port map (isSigned,a,b,Slt_sl4_UnsR);
		Xoring			: XorR <= a xor b;
		Shifting			: sft32 port map (sftType,a,ShiftingR,b(4 downto 0)); 
		Oring				: OrR <= a or b;
		Anding			: AndR <= a and b;

		--///////the shifting operation is only with 5 bits to shift 31 postion
		
		
		Slt_sl4_Uns_Ext_32bit_R <=  "-------------------------------" & Slt_sl4_UnsR ; --//extend 1 bit to 32 bit AND ONLY CONSIDRE THE FIRST BIT
		
		--//selection of the output 
		--0x0	000	ADD/SUB 
		--0x0 001	SLL
		--0x2	010	SLT
		--0x3	011	SLTU
		--0x4	100	XOR
		--0x5	101	SRL/SRA 
		--0x6	110	OR
		--0x7	111	AND
		with Opcode select  
			output <= 	addSubR						when	"000",
							ShiftingR					when 	"001",
							
							slt_sl4_Uns_Ext_32bit_R when 	"010",
							slt_sl4_Uns_Ext_32bit_R when 	"011",	
							
							XorR							when	"100",
							ShiftingR 					when 	"101",
							
							OrR							when	"110",
							AndR							when	"111";
	end desc;
	