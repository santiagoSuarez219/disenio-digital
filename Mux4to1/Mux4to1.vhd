----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.03.2024 09:47:35
-- Design Name: 
-- Module Name: 01Mux - Behavioral
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

entity Mux is
    Port ( I: in STD_LOGIC_VECTOR(3 downto 0);
           S : in STD_LOGIC_VECTOR(1 downto 0);
           Z : out STD_LOGIC);
end Mux;

architecture Behavioral of Mux is
begin
    with S select
        Z <= I(0) when "00",
             I(1) when "01",
             I(2) when "10",
             I(3) when others;
end Behavioral;

