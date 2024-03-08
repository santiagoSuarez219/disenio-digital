library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sumador1Bit is
  Port (
    X: in STD_LOGIC;
    Y: in STD_LOGIC;
    Ci: in STD_LOGIC;
    Z, Co: out STD_LOGIC
  );
end Sumador1Bit;

architecture Behavioral of Sumador1Bit is

begin
process(X, Y, Ci)
begin
    if (X = '0' and Y = '0') then
        Z <= Ci;
        Co <= '0';
    elsif ((X = '0' and Y = '1') or (X = '1' and Y = '0')) then
        Z <= not Ci;
        Co <= Ci;
    else
        Z <= Ci;
        Co <= '1';
    end if;
end process;
end Behavioral;
