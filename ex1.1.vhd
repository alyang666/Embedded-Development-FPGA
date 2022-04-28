library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity chro1 is
port(
     MAX10_CLK1_50: in std_logic;
	  HEX0,HEX1: out std_logic_vector(6 downto 0));
end chro1;

architecture a of chro1 is

component seg7 is
port(
     E: in std_logic_vector(3 downto 0);
	  S: out std_logic_vector(6 downto 0));
end component;

component compteur8 is
port(
	  clk, enable, nclear : in std_logic;
	  Q : out std_logic_vector (7 downto 0));
end component;

component reduct is
port(
	 clk, EN : in std_logic;
	 enable : out std_logic);
end component;

signal S: std_logic_vector(7 downto 0); 
signal enable, nclear, EN: std_logic;		
begin
U1 : seg7 port map (S(3 downto 0), HEX0);
U2 : seg7 port map (S(7 downto 4), HEX1);
U3 : compteur8 port map (MAX10_CLK1_50, enable, nclear, S);
u4 : reduct port map (MAX10_CLK1_50, EN, enable);
end a;





