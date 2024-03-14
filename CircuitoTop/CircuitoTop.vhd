library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CircuitoTop is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : in STD_LOGIC;
           X : out STD_LOGIC;
           Y : out STD_LOGIC;
           Z : out STD_LOGIC);
end CircuitoTop;

architecture Behavioral of CircuitoTop is

component Circuito1 is
    Port ( A : in STD_LOGIC;
            B : in STD_LOGIC;
            C : in STD_LOGIC;
            Y : out STD_LOGIC;
            Z : out STD_LOGIC);
end component Circuito1;

component Circuito2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Z : out STD_LOGIC);
end component Circuito2;

component Circuito3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Y : out STD_LOGIC;
           Z : out STD_LOGIC);
end component Circuito3;

signal S1, S2, S3: std_logic;

begin
InstanciaCircuito1: Circuito1 port map (A =>A, B =>B, C =>C, Y =>S1, Z =>S2);
InstanciaCircuito2: Circuito2 port map (A =>D, B =>E, Z =>S3);
InstanciaCircuito3: Circuito3 port map (A =>S1, B =>S2, C =>S3, Y => Y, Z => Z);

X <= S2;

end Behavioral;
