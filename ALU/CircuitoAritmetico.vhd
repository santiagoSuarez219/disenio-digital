library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CircuitoAritmetico is
  Port ( 
    A, B: in STD_LOGIC_VECTOR(3 downto 0);
    S: in STD_LOGIC_VECTOR(1 downto 0);
    Ci: in STD_LOGIC;
    Co: out STD_LOGIC;
    F: out STD_LOGIC_VECTOR(3 downto 0)
  );
end CircuitoAritmetico;

architecture Behavioral of CircuitoAritmetico is

component CtoMux4to1_4Bit is
    Port ( Ax : in STD_LOGIC_VECTOR (3 downto 0); --bus := "0000";
            B : in STD_LOGIC_VECTOR (3 downto 0);
            C : in STD_LOGIC_VECTOR (3 downto 0);
            D : in STD_LOGIC_VECTOR (3 downto 0); --bus := "1111";
            S : in STD_LOGIC_VECTOR (1 downto 0);
            Xx : out STD_LOGIC_VECTOR (3 downto 0));
end component CtoMux4to1_4Bit;

component Sumador4Bits is
    Port ( 
      X: in STD_LOGIC_VECTOR(3 DOWNTO 0);
      Y: in STD_LOGIC_VECTOR(3 DOWNTO 0);
      Ci: in STD_LOGIC;
      Co: out STD_LOGIC;
      Z: out STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
end component Sumador4Bits;

signal X,Ai,Di,Cs: STD_LOGIC_VECTOR(3 DOWNTO 0);

begin

Ai <= "0000";
Di <= "1111";
Cs <= not B;

InstMux: CtoMux4to1_4Bit port map(Ax => Ai,B => B, C => Cs,D => Di,S =>S,Xx =>X);
InstSumador: Sumador4Bits port map(X => A,Y => X,Ci => Ci,Co => Co ,Z => F );

end Behavioral;
