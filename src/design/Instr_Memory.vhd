----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.04.2024 23:44:29
-- Design Name: 
-- Module Name: Instr_Memory - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Instr_Memory is
    Port ( clk : in std_logic;
           addr : in STD_LOGIC_VECTOR (7 downto 0);
           instr : out STD_LOGIC_VECTOR (23 downto 0));
end Instr_Memory;

architecture Behavioral of Instr_Memory is

    type mem_t is array (0 to 255) of std_logic_vector(23 downto 0);
    signal mem : mem_t;
    
begin
    instr_mem : process(clk)
        begin
            if rising_edge(clk) then
                instr <= mem(TO_INTEGER(unsigned(addr)));
            end if;
        end process;

end Behavioral;
