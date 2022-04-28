library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reduct is
port (
	clk, EN : in std_logic;
	enable : out std_logic
	);
end reduct;

architecture a of reduct is

begin
	process(clk)
	variable c : integer ;
	begin
		if rising_edge(clk) then
			c:= 0;
			if EN = '1' then
				if c= 10 then 
			      c:= 0;
					enable<= '1';
				else
				   enable<= '0';
            end if;
				   c:= c+1;
			end if;
		end if;	
	end process;
end a;