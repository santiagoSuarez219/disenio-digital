library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCDTo7SegmentDecoder is
    Port (bcd : in STD_LOGIC_VECTOR(3 downto 0);
           segment7 : out STD_LOGIC_VECTOR(6 downto 0));
end BCDTo7SegmentDecoder;

architecture Behavioral of BCDTo7SegmentDecoder is

begin
    with bcd select
        segment7 <= "1000000" when "0000",
                    "1111001" when "0001",
                    "0100100" when "0010",
                    "0110000" when "0011",
                    "0011001" when "0100",
                    "0010010" when "0101",
                    "0000010" when "0110",
                    "1111000" when "0111",
                    "0000000" when "1000",
                    "0010000" when "1001",
                    "1111111" when others;
end Behavioral;
