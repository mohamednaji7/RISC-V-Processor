library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.SXT;
			
entity Decode is 
	port(	Inst 	:	in		std_logic_vector(31 downto 0); 
			--Braanch:	in std_logic			
			
			--//\\-- Cache --//\\--
			--CONTROL
			MWR		:	out std_logic; 	-- '1' is WRITE
			
			--//\\-- RegFile --//\\-- 
			--CONTROL
			WERF		:	out std_logic; 	-- '1' is WRITE
			--DATAPATH
			RP1,RP2 	:	out	std_logic_vector(4 downto 0);
			
			
			---/\\/ EXECUTE WIRES /\\/---
			--CONTROL 
			ALUFunct	:	out std_logic_vector(3 downto 0);
			--BrALUFunct:	out --add the BrALU
			BSEL		:	out std_logic_vector(2 downto 0);
			ASEL		:	out std_logic;
			WDSEL		:	out std_logic_vector(1 downto 0);
			PCSEL		:	out std_logic_vector(1 downto 0);
			--DATAPATH
			WP			:	out	std_logic_vector(4 downto 0);
			immI,immS_B,immU_J :	out std_logic_vector(31 downto 0)
			
			
			);
	end entity;
	
architecture desc of Decode is
	signal	Opcode	:	std_logic_vector(6 downto 0); --Inst[6:0]
	signal	funct3	:	std_logic_vector(2 downto 0); --Inst[14:12]
	signal	funct7	:	std_logic_vector(6 downto 0); --Inst[14:12]
	
	signal  	imm31_20			:	std_logic_vector(11 downto 0);
	signal 	imm31_12			:	std_logic_vector(19 downto 0);
	signal	imm31_25_11_7	:	std_logic_vector(11 downto 0);
	
	begin
	
		Opcode 	<=		Inst(6 downto 0);
		funct3	<=		Inst(14 downto 12);
		funct7	<=		Inst(31 downto 25);
		
		
		
		RP1<=	Inst(19 downto 15);
		RP2<=	Inst(24 downto 20);
		WP	<=	Inst(11 downto 7);
		
		
		imm31_20			<=		Inst(31 downto 20);
		imm31_12			<=		Inst(31 downto 12);
		imm31_25_11_7	<=	Inst(31 downto 25) & Inst(11 downto 7);
		immI 		<=	SXT(imm31_20,32);
		immU_J	<=	SXT(imm31_12,32);
		immS_B	<=	SXT(imm31_25_11_7,32);
		
		
				
		with Opcode select
			ALUFunct	<= Inst(30)&Funct3	when "0110011",
							Inst(30)&Funct3	when "0010011",
							"0001"				when "0110111", --SLL ALU
							---------------------------------
							"----"	when "1100011", --does not effect as BrALUFunct=1 @tag:0x22
							"0000"				when "1101111",
							---------------------------------
							"0000"				when "0000011",
							'0' & Funct3 		when "1100111",
							"0000"				when "0100011",
							 "----"				when others; --as controling WERF,MWR and PCSEL  
		with Opcode select
			BSEL		<= "000"		when "0110011",
							"001"		when "0010011",
							"011"		when "0110111",
							-----------------------
							"000"		when "1100011",
							"100"		when "1101111",
							-----------------------
							"001"		when "0000011",
							"001"		when "1100111",
							"010"		when "0100011",
							"---"		when others; --as controling WERF,MWR and PCSEL 
		with Opcode select
			ASEL		<= '0'		when "0110011",
							'0'		when "0010011",
							'1'		when "0110111", 
							-----------------------
							'0'		when "1100011",
							'1'		when "1101111",
							-----------------------
							'0'		when "0000011",
							'0'		when "1100111",
							'0'		when "0100011",
							'-'		when others; --as controling WERF,MWR and PCSEL 
		
		with Opcode select
			MWR		<= '0'		when "0110011",
							'0'		when "0010011",
							'0'		when "0110111", 
							-----------------------
							'0'		when "1100011",
							'0'		when "1101111",
							-----------------------
							'0'		when "0000011",
							'0'		when "1100111",
							'1'		when "0100011",
							'0' 		when others; -- considring it NOP and don't read any thing 
		with Opcode select
			WDSEL		<= "01"		when "0110011",
							"01"		when "0010011",
							"01"		when "0110111",
							-----------------------
							"--"		when "1100011", --branch does not affect as WERF is OFF till ADDING BRALU  @tag:0x22
							"00"		when "1101111",
							-----------------------
							"10"		when "0000011",
							"00"		when "1100111",
							"01"		when "0100011",
							"--"		when others; --as controling WERF,MWR and PCSEL
		with Opcode select
			WERF		<= '1'		when "0110011",
							'1'		when "0010011",
							'1'		when "0110111", 
							-----------------------
							'0'		when "1100011",
							'1'		when "1101111",
							-----------------------
							'1'		when "0000011",
							'1'		when "1100111",
							'0'		when "0100011",
							'0' 		when others; -- considring it NOP and DO NOT WRITE any thing 
		with Opcode select
			PCSEL		<= "00"		when "0110011",
							"00"		when "0010011",
							"00"		when "0110111",
							-----------------------
							"01"		when "1100011", 
							"10"		when "1101111",
							-----------------------
							"00"		when "0000011",
							"10"		when "1100111",
							"00"		when "0100011",
							"00" 		when others; -- considring it NOP and DO NOT DO any thing just "goto the next inst" 
		--with Opcode select when addding it inspect tag:0x22
			--BrALUFunct		<= --add it
	end desc;			
		