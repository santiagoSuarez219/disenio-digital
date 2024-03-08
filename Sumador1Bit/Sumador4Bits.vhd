library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Sumador4Bits is
  Port ( 
    X: in STD_LOGIC_VECTOR(3 DOWNTO 0);
    Y: in STD_LOGIC_VECTOR(3 DOWNTO 0);
    Ci: in STD_LOGIC;
    Co: out STD_LOGIC;
    Z: out STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
end Sumador4Bits;

architecture Behavioral of Sumador4Bits is

component Sumador1Bit is
Port (
    X: in STD_LOGIC;
    Y: in STD_LOGIC;
    Ci: in STD_LOGIC;
    Z, Co: out STD_LOGIC
);
end component Sumador1Bit;

signal C1, C2, C3: STD_LOGIC;

begin
    Sumador1: Sumador1Bit port map( X=> X(0), Y => Y(0), Ci => Ci, Z => Z(0), Co => C1);
    Sumador2: Sumador1Bit port map( X=> X(1), Y => Y(1), Ci => C1, Z => Z(1), Co => C2);
    Sumador3: Sumador1Bit port map( X=> X(2), Y => Y(2), Ci => C2, Z => Z(2), Co => C3);
    Sumador4: Sumador1Bit port map( X=> X(3), Y => Y(3), Ci => C3, Z => Z(3), Co => Co);
end Behavioral;
