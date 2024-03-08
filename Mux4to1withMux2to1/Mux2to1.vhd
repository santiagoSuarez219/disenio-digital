library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux2to1 is
    Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
           S : in STD_LOGIC;
           F : out STD_LOGIC);
end Mux2to1;

architecture Behavioral of Mux2to1 is

begin
    process(I, S)
    begin
        if S = '0' then
            F <= I(0);
        else
            F <= I(1);
        end if;
    end process;
end Behavioral;
