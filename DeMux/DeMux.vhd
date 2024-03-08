library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DeMux is
    Port ( F : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0));
end DeMux;

architecture Behavioral of DeMux is

begin
    process (F, S) is
    begin
        if(S = "00") then
            O(0) <= F;
        elsif(S = "01") then
            O(1) <= F;
        elsif(S = "10") then
            O(2) <= F;
        else
            O(3) <= F;
        end if;
    end process;
end Behavioral;
