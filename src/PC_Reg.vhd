library ieee;
use ieee.std_logic_1164.all;

entity PC_Reg is
port(
	clk		:	in		std_logic;
	reset 	: 	in 	std_logic;  
	nextPC	:	in 	std_logic_vector(31 downto 0);
	PC			:	out 	std_logic_vector(31 downto 0)
);
end PC_Reg;


architecture behavior of PC_Reg is
	begin
	process(clk,reset)
		begin
			if reset = '1' then  
				PC <= X"00000000"; 
			elsif rising_edge(clk) then 
				PC <= nextPC ;
			end if;
	end process;
end behavior;
