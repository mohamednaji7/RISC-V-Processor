library ieee;
use ieee.std_logic_1164.all;

entity EXECUTE	is
	port(	
	
			--\/\/ DECODE WIRES ____/\\/``````
			--CONTROL 
			ALUFunct	:	in std_logic_vector(3 downto 0);
			--BrALUFunct:	out --add the BrALU
			BSEL		:	in std_logic_vector(2 downto 0);
			ASEL		:	in std_logic;
			WDSEL		:	in std_logic_vector(1 downto 0);
			PCSEL		:	in std_logic_vector(1 downto 0);
			--DATAPATH
			WP			:	in	std_logic_vector(4 downto 0);
			immI,immS_B,immU_J :	in std_logic_vector(31 downto 0);
			--Branch : out std_log Add BrALU First
			
			
			--//\\-- Data 	Memory --//\\--
			Memo_READ_Data		:	in		std_logic_vector(31 downto 0);
			Memory_Address		:	out 	std_logic_vector(31 downto 0);
			Memory_WriteData	:	out	std_logic_vector(31 downto 0);
			
			
			--\\//--- Register File Wires --\\//--- 
			rs1,rs2 				:	in		std_logic_vector(31 downto 0);
			rd_port		:	out	std_logic_vector(4 downto 0);
			WB_to_rd		:	out 	std_logic_vector(31 downto 0);
			
			
			--\/\/ 	Inst. Fetch	--\/\/---
			PC			:	in		std_logic_vector(31 downto 0);
			WB_nextPC:	out 	std_logic_vector(31 downto 0) );
	end entity;
	
	architecture desc of EXECUTE is
	
		signal	A,B,ALUOUT 	:	std_logic_vector(31 downto 0); 
		signal	jumpto_J		:	std_logic_vector(31 downto 0); 
		signal 	nextPC		:	std_logic_vector(31 downto 0);
		signal 	hexa_C			:	std_logic_vector(31 downto 0);
		signal 	PC_add1_R		:	std_logic_vector(31 downto 0);
		
		component alu is
			port(	Opcode:in std_logic_vector(2 downto 0); OpSignal:in std_logic;
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
			end component;

		component PC_add1
			port(	x: 	in 	std_logic_vector(31 downto 0);
					z: 	out	std_logic_vector(31 downto 0) );
			end component;

		
		component nextPC_comp 
				port(	PCSEL				: 	in		std_logic_vector(1 downto 0);
						
						PC_add			:	in		std_logic_vector(31 downto 0);
						J					:	in		std_logic_vector(31 downto 0);
						immB_for_Comp	:	in		std_logic_vector(31 downto 0);
						current_PC		:	in		std_logic_vector(31 downto 0);
						
						nextPC_comp_output:out	std_logic_vector(31 downto 0)	);
				end component;
		begin
			hexa_C	<= "00000000000000000000000000001100";
			
			with BSEL select 
				B	<=	rs2 		when 	"000",
						immI		when	"001",
						immS_B	when 	"010",
						hexa_C	when	"011",
						PC 		when 	"100", 	
						"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"	when others; -- INVALID INST CODE HERE

			A	<=		rs1 		when 	ASEL = '0'
				else 	immU_J	when	ASEL = '1';
			
			WIRING_THE_ALU: 	alu port map (ALUFunct(2 downto 0),ALUFunct(3),A,B,ALUOUT);
			
			
			jumpto_J <= ALUOUT; 
			---------------------------------------------------------------
			PCADDING_1:	PC_add1 port map(PC,PC_add1_R);
			---------------------------------------------------------------
			wiring_THE_nPC	: nextPC_comp port map(PCSEL,PC_add1_R,jumpto_J,immS_B,PC,WB_nextPC );
			---------------------------------------------------------------			
			Memory_Address<= ALUOUT;
			Memory_WriteData<=rs2;
			rd_port <= WP;			
			with WDSEL select
				WB_to_rd <= PC_add1_R	when 	"00",
								ALUOUT	when	"01",
								Memo_READ_Data	when "10",
								"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"	when others; -- INVALID INST CODE HERE
								
			
			
			
		end desc;