library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Circuito2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Z : out STD_LOGIC);
end Circuito2;

architecture Behavioral of Circuito2 is

begin
process(A,B)
begin
    if (A = '0' and B = '0') then
        Z <= '1';
    elsif(A = '0' and B = '1') then
        Z <= '1';
    elsif(A = '1' and B = '0') then
        Z <= '0';
    else
        Z <= '0';
    end if;
end process;


end Behavioral;
