library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SimulationBCDto7Segment is
end SimulationBCDto7Segment;

architecture Behavioral of SimulationBCDto7Segment is

component BCDTo7SegmentDecoder
    Port (bcd : in STD_LOGIC_VECTOR(3 downto 0);
            segment7 : out STD_LOGIC_VECTOR(6 downto 0));
end component BCDTo7SegmentDecoder;

signal bcd: STD_LOGIC_VECTOR(3 downto 0);
signal segment7: STD_LOGIC_VECTOR(6 downto 0);

begin

InstSim: BCDTo7SegmentDecoder port map(bcd,segment7);

simulationProcess: process
begin
    bcd <= "0000";
    wait for 10 ns;
    bcd <= "0001";
    wait for 10 ns;
    bcd <= "0010";
    wait for 10 ns;
    bcd <= "0011";
    wait for 10 ns;
    bcd <= "0100";
    wait for 10 ns;
    bcd <= "0101";
    wait for 10 ns;
    bcd <= "0110";
    wait for 10 ns;
    bcd <= "0111";
    wait for 10 ns;
    bcd <= "1000";
    wait for 10 ns;
    bcd <= "1001";
    wait;
end process;

end Behavioral;
