library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eAlu is
    Port (
        A, B: in STD_LOGIC_VECTOR(3 downto 0);
        S: in STD_LOGIC_VECTOR(2 downto 0);
        Ci: in STD_LOGIC;
        Co: out STD_LOGIC;
        F: out STD_LOGIC_VECTOR(3 downto 0)
     );
end eAlu;

architecture Behavioral of eAlu is

component Cto_Logico is
    Port (A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           Fy : out STD_LOGIC_VECTOR (3 downto 0));
end component Cto_Logico;

component CircuitoAritmetico is
  Port ( 
    A, B: in STD_LOGIC_VECTOR(3 downto 0);
    S: in STD_LOGIC_VECTOR(1 downto 0);
    Ci: in STD_LOGIC;
    Co: out STD_LOGIC;
    F: out STD_LOGIC_VECTOR(3 downto 0)
  );
end component CircuitoAritmetico;

component Mux2to1 is
    Port ( Fx : in STD_LOGIC_VECTOR (3 downto 0);
           Fy : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC;
           F : out STD_LOGIC_VECTOR (3 downto 0));
end component Mux2to1;

signal Fy, Fx: STD_LOGIC_VECTOR(3 downto 0);

begin
InsCtoLogico: Cto_Logico port map(A => A,B => B,S(0)=>S(0), S(1) => S(1), Fy => Fy);
InsCircuitoAritmetico: CircuitoAritmetico port map(A =>A,B =>B,S(0)=>S(0), S(1) => S(1),Ci => Ci,Co =>Co,F =>Fx);
InsMux2to1: Mux2to1 port map(Fx => Fx, Fy => Fy, S => S(2));

end Behavioral;
