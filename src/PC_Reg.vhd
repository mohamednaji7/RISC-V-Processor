library ieee;
use ieee.std_logic_1164.all;

entity PC_Reg is
port(
	
	clk:	in		std_logic;
	--rSet:in		std_logic; @tag:0xFAA --//no reset applay intial value for the D
	--writeEnable: in std_logic; @tag:0xfffo --//always write enable with the clk 
	D	:	in 	std_logic_vector(31 downto 0);
	Q	:	out 	std_logic_vector(31 downto 0)
);
end PC_Reg;


architecture behavior of PC_Reg is
	begin
	
	process(clk) --process(clk,rSet) @tag:0xFAA --//no reset applay intial value for the D
		begin
		--if rSet = '1' then @tag:0xFAA --//no reset applay intial value for the D
			-- Q <= x"00000000"; then @tag:0xFAA --//no reset applay intial value for the D
		if rising_edge(clk) then  -- elsif rising_edge(clk) then @tag:0xFAA --//no reset applay intial value for the D
			
			--if( writeEnable = '1' ) then @tag:0xfffo --//always write enable with the clk 
				Q <= D ;
			--end if;@tag:0xfffo --//always write enable with the clk 
		end if;
	end process;
end behavior;