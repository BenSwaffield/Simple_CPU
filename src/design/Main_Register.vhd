----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.04.2024 23:34:33
-- Design Name: 
-- Module Name: Main_Register - Behavioral
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

entity Main_Register is
    Port ( data_bus : inout STD_LOGIC_VECTOR (7 downto 0);
           alu_bus : inout STD_LOGIC_VECTOR (7 downto 0);
           read : in STD_LOGIC;
           write : in STD_LOGIC);
end Main_Register;

architecture Behavioral of Main_Register is

begin


end Behavioral;
