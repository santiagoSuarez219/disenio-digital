library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SimMUX4x1 is
end SimMUX4x1;

architecture Behavioral of SimMUX4x1 is

component MUX4x1 is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           F : out STD_LOGIC);
end component MUX4x1;

signal I : STD_LOGIC_VECTOR (3 downto 0);
signal S : STD_LOGIC_VECTOR (1 downto 0);
signal F : STD_LOGIC;

begin

InsSim: MUX4x1 port map(I,S,F); --Solo se puede utilizar en simulacion 

procI0: process
begin
I(0) <= '0';
wait for 5ns;
I(0) <= '1';
wait for 5ns;
end process;

procI1: process
begin
I(1) <= '0';
wait for 10ns;
I(1) <= '1';
wait for 10ns;
end process;

procI2: process
begin
I(2) <= '0';
wait for 20ns;
I(2) <= '1';
wait for 20ns;
end process;

procI13: process
begin
I(3) <= '0';
wait for 40ns;
I(3) <= '1';
wait for 40ns;
end process;

procS0: process
begin
S(0) <= '0';
wait for 80ns;
S(0) <= '1';
wait for 80ns;
end process;

procS1: process
begin
S(1) <= '0';
wait for 160ns;
S(1) <= '1';
wait for 160ns;
end process;

end Behavioral;