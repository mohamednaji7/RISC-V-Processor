library ieee;
use ieee.std_logic_1164.all;

entity nextPC_comp is
	port(	PCSEL				: 	in		std_logic_vector(1 downto 0);
			
			PC_add			:	in		std_logic_vector(31 downto 0);
			J					:	in		std_logic_vector(31 downto 0);
			immB_for_Comp	:	in		std_logic_vector(31 downto 0);
			current_PC		:	in		std_logic_vector(31 downto 0);
			
			nextPC_comp_output:out	std_logic_vector(31 downto 0)	);
	end entity;

architecture desc	of nextPC_comp is

	component	fullAdder32bit 
		port(	cin:in std_logic; 
				a,b:in std_logic_vector(31 downto 0);
				s:out std_logic_vector(31 downto 0)  );--//there is no cOut here the o/p is just 32bit
		end component;
	signal immB_PC_R	: std_logic_vector(31 downto 0);
	signal cin : std_logic;
	begin
		cin<= '0'; --carry in
		wiringB	:	fullAdder32bit port map(cin,current_PC,immB_for_Comp,immB_PC_R);
		
		with PCSEL select 
			nextPC_comp_output<=	PC_add		when "00",
										immB_PC_R	when "01",
										J				when "10",
										"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"	when others; -- INVALID INST CODE HERE
										
	end desc;