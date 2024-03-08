----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.09.2021 13:56:25
-- Design Name: 
-- Module Name: Cto_Logico - aCto_Logico
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

entity Cto_Logico is
    Port (A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           Fy : out STD_LOGIC_VECTOR (3 downto 0));
end Cto_Logico;

architecture aCto_Logico of Cto_Logico is

component CtoMux4to1_4Bit is
    Port ( Ax : in STD_LOGIC_VECTOR (3 downto 0); --bus := "0000";
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0); --bus := "1111";
           S : in STD_LOGIC_VECTOR (1 downto 0);
           Xx : out STD_LOGIC_VECTOR (3 downto 0));
end component CtoMux4to1_4Bit;

signal Ci0, Ci1, Ci2, Ci3: STD_LOGIC_VECTOR (3 downto 0);

begin

Ci0 <= A OR B;
Ci1 <= A XOR B;
Ci2 <= A AND B;
Ci3 <= NOT A;

i0_CtoMux4to1_4Bit:CtoMux4to1_4Bit port map(Ax => Ci0, B => Ci1, C => Ci2, D => Ci3, S => S, Xx => Fy);

end aCto_Logico;
