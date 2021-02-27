library ieee;
use ieee.std_logic_1164.all;

entity rotate is
port(x:in std_logic_vector(31 downto 0); f:out std_logic_vector(31 downto 0));
end rotate;

architecture desc of rotate is
	begin
        wiring:for i in 0 to 31  generate
				begin
					f(i)<=x(31-i);
        end generate;
	end desc;