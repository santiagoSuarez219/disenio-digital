library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SimSumador4Bits is
--  Port ( );
end SimSumador4Bits;

architecture Behavioral of SimSumador4Bits is

component Sumador4Bits is
Port ( 
    X: in STD_LOGIC_VECTOR(3 DOWNTO 0);
    Y: in STD_LOGIC_VECTOR(3 DOWNTO 0);
    Ci: in STD_LOGIC;
    Co: out STD_LOGIC;
    Z: out STD_LOGIC_VECTOR(3 DOWNTO 0)
);
end component Sumador4Bits;

signal X, Y, Z: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal Ci, Co: STD_LOGIC; 

begin

InstanciaSimulacion: Sumador4Bits port map(X => X,Y => Y,Z => Z,Ci => Ci,Co =>Co);

SimulacionProcess:process
begin
X <= "0001";
Y <= "0010";
Ci <= '0';
wait for 10 ns;

X <= "0011";
Y <= "0100";
Ci <= '0';
wait for 10 ns;

X <= "0111";
Y <= "1000";
Ci <= '0';
wait for 10 ns;

X <= "1111";
Y <= "1111";
Ci <= '0';
wait for 10 ns;
end process;

end Behavioral;
