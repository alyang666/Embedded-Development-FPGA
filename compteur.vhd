library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compteur8 is
port (
	clk, enable, nclear : in std_logic;
	Q : out std_logic_vector (7 downto 0)
	);
end compteur8;

architecture a of compteur8 is
signal mem : unsigned (7 downto 0);
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if nclear = '0' then
				mem <= (others => '0');
			elsif enable = '1' then
				mem <= mem + 1;
			end if;
		end if;
	end process;
	Q <= std_logic_vector(mem);
end a;


