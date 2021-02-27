library ieee;
use ieee.std_logic_1164.all;

entity processor	is
	port(	Pulse_Me_to_Fly: in std_logic; 	
			clk				: in std_logic);
	end entity;

	-- "ZZZZZ...."/"----....."  in the internal signal R indicators to the invalid_Insttruction/con't_care_values
architecture desc of processor is
	component IFetch 
		port(	clk			:	in		std_logic;
				reset_to_0	: 	in 	std_logic;  
				nextPC		:	in		std_logic_vector(31 downto 0);
				currentPC	:	out		std_logic_vector(31 downto 0);
				Instruction	:	out 	std_logic_vector(31 downto 0) );
		end component;
	Signal IFetch_Instruction,IFetch_currentPC :std_logic_vector(31 downto 0) ;
	
	component Decode is 
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
			immI,immS_B,immU_J :	out std_logic_vector(31 downto 0)   );
		end component;
	signal 	DECODE_MWR,DECode_WERF,DECODE_ASEL:	std_logic;
	signal	DECode_RP1,DECode_RP2,DECode_WP	:	std_logic_vector(4 downto 0);
	signal	DECODE_ALUFunct						:	std_logic_vector(3 downto 0);
	signal	DECODE_BSEL								:	std_logic_vector(2 downto 0);
	signal	DECODE_WDSEL,DECODE_PCSEL			:	std_logic_vector(1 downto 0);
	signal	DECODE_immI,DECODE_immS_B,DECODE_immU_J:	std_logic_vector(31 downto 0);
	
	component Data_Memory 
		Generic (RAM_width: intEGER := 32;
					RAM_depth: intEGER := 256 );
		port(
			clk	:	IN		STD_logic;
			Add	:	IN		std_logic_vector(RAM_width-1 downto 0);--converted to Add	:	IN		INTEGER  RANGE 0 to 1023;
			WE	:	IN 	std_logic; --WE '1' is write and '0' is read
			WD		:	IN		std_logic_vector(RAM_width-1 downto 0);
			RD		:	OUT	std_logic_vector(RAM_width-1 downto 0));
		END component;
	signal	DATA_MEMORY_RD :std_logic_vector(31 downto 0);
	
	
	
	component EXECUTE	
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
		end component;
	signal	EXECUTE_Memory_Address,EXECUTE_Memory_WriteData,EXECUTE_WB_to_rd,EXECUTE_WB_nextPC : std_logic_vector(31 downto 0);
	signal	EXECUTE_rd_port 				: 	std_logic_vector(4 downto 0);
	
		
	
	component regFile 
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
		end component;
	signal	REGFILE_RD1,REGFILE_RD2 :std_logic_Vector(32-1 downto 0);
	
	
	

	
	
	begin
		wiringIF:IFetch port map(clk,Pulse_Me_to_Fly,EXECUTE_WB_nextPC,IFetch_currentPC,IFetch_Instruction);  
		wiringDEC:Decode port map(	IFetch_Instruction,DECODE_MWR,DECode_WERF,DECode_RP1,DECode_RP2,DECODE_ALUFunct,
											DECODE_BSEL,DECODE_ASEL,DECODE_WDSEL,DECODE_PCSEL,DECode_WP,
											DECODE_immI,DECODE_immS_B,DECODE_immU_J);
		wiringRFILE:regFile port map(	clk,DECODE_WERF,DECODE_RP1,DECODE_RP2,
												EXECUTE_rd_port,EXECUTE_WB_to_rd,REGFILE_RD1,REGFILE_RD2);
		
		wiringEXE:EXECUTE port map(DECODE_ALUFunct,DECODE_BSEL,DECODE_ASEL,DECODE_WDSEL,DECODE_PCSEL,
																	DECODE_WP,DECODE_immI,DECODE_immS_B,DECODE_immU_J,
											DATA_MEMORY_RD,EXECUTE_Memory_Address,EXECUTE_Memory_WriteData,
											REGFILE_RD1,REGFILE_RD2,EXECUTE_rd_port,EXECUTE_WB_to_rd,
												IFetch_currentPC,EXECUTE_WB_nextPC);
		
		wiringDATAMEMORY:Data_Memory port map(	clk,EXECUTE_Memory_Address,DECODE_MWR,EXECUTE_Memory_WriteData,DATA_MEMORY_RD);
	end desc;
		