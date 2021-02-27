library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.to_integer;USE ieee.numeric_std.unsigned;
use std.textio.all;
--//this is a magic RAM
entity Data_Memory is
	Generic (RAM_width: intEGER := 32;
				RAM_depth: intEGER := 256 );
	port(
		clk	:	IN		STD_logic;
		Add	:	IN		std_logic_vector(RAM_width-1 downto 0);--converted to Add	:	IN		INTEGER  RANGE 0 to 1023;
		WE	:	IN 	std_logic; --WE '1' is write and '0' is read
		WD		:	IN		std_logic_vector(RAM_width-1 downto 0);
		RD		:	OUT	std_logic_vector(RAM_width-1 downto 0));
END Data_Memory;

architecture behavior of Data_Memory is

	TYPE MAGIC_RAM IS ARRAY(0 to RAM_depth-1 ) OF STD_LOGIC_VECTOR(RAM_width-1 DOWNTO 0);  
	impure function read_file(txt_file : in string ) return MAGIC_RAM is
		file RAM_FILE : text open read_mode is txt_file ;
		variable txt_line :	line ;
		variable	txt_bit 	:	bit_vector(RAM_width-1 dowNTO 0);
		variable txt_ram	:	MAGIC_RAM;
		begin for i in MAGIC_RAM'range loop
			readline(ram_FILE,txt_line);
			read(txt_line, txt_bit);
			txt_ram(i) := to_stdlogicvector(txt_bit);
		end loop; return txt_ram;
	end function;			
	sigNAL RAM : MAGIC_RAM := read_file("machine_code_program_data.txt");

	SIGNAL Add_INT : INTEGER Range 0 to 255 ; --256 word , 256 inst 
	begin
		
		Add_INT <= to_integer(unsigned(Add));
		RD <= RAM(Add_INT); --/\-- this a magic memory -- read is combinational 
		process(clk)
			begin
			if rising_edge(clk) then				
				if (WE = '1') then 
					RAM(Add_INT) <=  WD;
				end if;
			end IF;
		end process;
	end behavior;