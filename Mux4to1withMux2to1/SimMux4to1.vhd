library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SimMux4to1 is

end SimMux4to1;

architecture Behavioral of SimMux4to1 is

component Mux4to1 is
end component Mux4to1;

signal I: STD_LOGIC_VECTOR (3 downto 0);
signal S: STD_LOGIC_VECTOR (1 downto 0);
signal F: STD_LOGIC;

begin

InstSim: Mux4to1 port map(I => I, S => S, F => F);

SimProcess: process
begin
    I <= "1010";
    S <= "00";
    wait for 20ns;
    S <= "01";
    wait for 20ns;
    S <= "10";
    wait for 20ns;
    S <= "11";
    wait;
end process;

end Behavioral;
