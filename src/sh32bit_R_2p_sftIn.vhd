library ieee;
use ieee.std_logic_1164.all;

entity sh32bit_R_2p_sftIn is
port(sftIn:in std_logic;x:in std_logic_vector(31 downto 0); z:out std_logic_vector(31 downto 0));
end sh32bit_R_2p_sftIn ;

architecture desc of sh32bit_R_2p_sftIn is
	begin	
 
        wiring:for i in 0 to 29  generate
				begin
					z(i)<=x(i+2);
        end generate;
        forcing_sftIn:for i in 30 to 31  generate
				begin
					z(i)<=sftIn;
        end generate;
         
 end architecture;