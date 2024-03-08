----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2022 07:16:02
-- Design Name: 
-- Module Name: MUX4x1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX4x1 is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           F : out STD_LOGIC);
end MUX4x1;

architecture Behavioral of MUX4x1 is
component MUX2x1 is
    Port ( I0 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           S : in STD_LOGIC;
           F: out STD_LOGIC);
end component MUX2x1;

signal aux1, aux2: STD_LOGIC;

begin

Inst1: MUX2x1 port map (I0=>I(0), I1=>I(1), S=>S(0), F=> aux1);
Inst2: MUX2x1 port map (I0=>I(2), I1=>I(3), S=>S(0), F=> aux2);
Inst3: MUX2x1 port map (I0=>aux1, I1=>aux2, S=>S(1), F=> F);

end Behavioral;







