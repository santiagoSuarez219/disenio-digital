library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Circuito3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Y : out STD_LOGIC;
           Z : out STD_LOGIC);
end Circuito3;

architecture Behavioral of Circuito3 is

begin
process(A,B,C)
begin
    if (A = '0' and B = '0' and C = '0') then
        Y <= '0';
        Z <= '1';
    elsif(A = '0' and B = '0' and C = '1') then
        Y <= '0';
        Z <= '1';
    elsif(A = '0' and B = '1' and C = '0') then
        Y <= '1';
        Z <= '1';
    elsif(A = '0' and B = '1' and C = '1') then
        Y <= '1';
        Z <= '0';
    elsif(A = '1' and B = '0' and C = '0') then
        Y <= '1';
        Z <= '1';
    elsif(A = '1' and B = '0' and C = '1') then
        Y <= '0';
        Z <= '0';
    elsif(A = '1' and B = '1' and C = '0') then
        Y <= '1';
        Z <= '0';
    else
        Y <= '1';
        Z <= '1';
    end if;
end process;

end Behavioral;
