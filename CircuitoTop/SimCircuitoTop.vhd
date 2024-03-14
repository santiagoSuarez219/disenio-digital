library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SimCircuitoTop is
end SimCircuitoTop;

architecture Behavioral of SimCircuitoTop is

component CircuitoTop is
    Port ( A : in STD_LOGIC;
            B : in STD_LOGIC;
            C : in STD_LOGIC;
            D : in STD_LOGIC;
            E : in STD_LOGIC;
            X : out STD_LOGIC;
            Y : out STD_LOGIC;
            Z : out STD_LOGIC);
end component CircuitoTop;

signal A, B, C, D, E, X, Y, Z : STD_LOGIC;

begin

InstanciaCircuitoTop : CircuitoTop port map (A => A, B => B, C => B, D => D, E => E, X => X, Y => Y, Z => Z);

simulationProcess: process
begin
    A <= '0';
    B <= '0';
    C <= '0';
    D <= '0';
    E <= '0';
    wait for 10 ns;

    A <= '1';
    B <= '0';
    C <= '0';
    D <= '0';
    E <= '0';
    wait for 10 ns;

    A <= '0';
    B <= '1';
    C <= '0';
    D <= '0';
    E <= '0';
    wait for 10 ns;

    A <= '1';
    B <= '1';
    C <= '0';
    D <= '0';
    E <= '0';
    wait for 10 ns;

    A <= '0';
    B <= '0';
    C <= '1';
    D <= '0';
    E <= '0';
    wait for 10 ns;

    A <= '1';
    B <= '0';
    C <= '1';
    D <= '0';
    E <= '0';
    wait for 10 ns;

    A <= '0';
    B <= '1';
    C <= '1';
    D <= '0';
    E <= '0';
    wait for 10 ns;

    A <= '1';
    B <= '1';
    C <= '1';
    D <= '0';
    E <= '0';
    wait for 10 ns;

    A <= '0';
    B <= '0';
    C <= '0';
    D <= '1';
    E <= '0';
    wait for 10 ns;

    A <= '1';
    B <= '0';
    C <= '0';
    D <= '1';
    E <= '0';
    wait for 10 ns;

    A <= '0';
    B <= '1';
    C <= '0';
    D <= '1';
    E <= '0';
    wait for 10 ns;

    A <= '1';
    B <= '1';
    C <= '0';
    D <= '1';
    E <= '0';
    wait for 10 ns;

    A <= '0';
    B <= '0';
    C <= '1';
    D <= '1';
    E <= '0';
    wait for 10 ns;

    A <= '1';
    B <= '0';
    C <= '1';
    D <= '1';
    E <= '0';
    wait for 10 ns;

    A <= '0';
    B <= '1';
    C <= '1';
    D <= '1';
    E <= '0';
    wait for 10 ns;

    A <= '1';
    B <= '1';
    C <= '1';
    D <= '1';
    E <= '0';
    wait for 10 ns;

    A <= '0';
    B <= '0';
    C <= '0';
    D <= '0';
    E <= '1';
    wait for 10 ns;

    A <= '1';
    B <= '0';
    C <= '0';
    D <= '0';
    E <= '1';
    wait for 10 ns;

    A <= '0';
    B <= '1';
    C <= '0';
    D <= '0';
    E <= '1';
    wait for 10 ns;

    A <= '1';
    B <= '1';
    C <= '0';
    D <= '0';
    E <= '1';
    wait for 10 ns;

    A <= '0';
    B <= '0';
    C <= '1';
    D <= '0';
    E <= '1';
    wait for 10 ns;

    A <= '1';
    B <= '0';
    C <= '1';
    D <= '0';
    E <= '1';
    wait for 10 ns;

    A <= '0';
    B <= '1';
    C <= '1';
    D <= '0';
    E <= '1';
    wait for 10 ns;

    A <= '1';
    B <= '1';
    C <= '1';
    D <= '0';
    E <= '1';
    wait for 10 ns;

    A <= '0';
    B <= '0';
    C <= '0';
    D <= '1';
    E <= '1';
    wait for 10 ns;

    A <= '1';
    B <= '0';
    C <= '0';
    D <= '1';
    E <= '1';
    wait for 10 ns;

    A <= '0';
    B <= '1';
    C <= '0';
    D <= '1';
    E <= '1';
    wait for 10 ns;

    A <= '1';
    B <= '1';
    C <= '0';
    D <= '1';
    E <= '1';
    wait for 10 ns;

    A <= '0';
    B <= '0';
    C <= '1';
    D <= '1';
    E <= '1';
    wait for 10 ns;

    A <= '1';
    B <= '0';
    C <= '1';
    D <= '1';
    E <= '1';
    wait for 10 ns;

    A <= '0';
    B <= '1';
    C <= '1';
    D <= '1';
    E <= '1';
    wait for 10 ns;

    A <= '1';
    B <= '1';
    C <= '1';
    D <= '1';
    E <= '1';
    wait for 10 ns;
end process;
end Behavioral;
