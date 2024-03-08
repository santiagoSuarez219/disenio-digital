library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4to1 is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           F : out STD_LOGIC);
end Mux4to1;

architecture Behavioral of Mux4to1 is

component Mux2to1 is
    Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
            S : in STD_LOGIC;
            F : out STD_LOGIC);
end component Mux2to1;

signal aux1, aux2: STD_LOGIC;

begin

Mux2to1_1: Mux2to1 port map(I(0) => I(0), I(1) => I(1) , S => S(0), F => aux1);
Mux2to1_2: Mux2to1 port map(I(0) => I(2), I(1) => I(3) , S => S(0), F => aux2);
Mux2to1_3: Mux2to1 port map(I(0) => aux1, I(1) => aux2 , S => S(1), F => F);

end Behavioral;
