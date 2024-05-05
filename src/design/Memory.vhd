----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.04.2024 23:18:38
-- Design Name: 
-- Module Name: Memory - Behavioral
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

entity Memory is
    Port ( clk : in std_logic;
           addr : in STD_LOGIC_VECTOR (7 downto 0);
           read : in STD_LOGIC;
           write : in STD_LOGIC;
           data_bus : inout STD_LOGIC_VECTOR (7 downto 0));
end Memory;

architecture Behavioral of Memory is

    type mem_t is array (0 to 255) of std_logic_vector(7 downto 0);
    signal mem : mem_t;
    
    begin
        main_mem : process(clk)
        begin
            if rising_edge(clk) then
                if write = '1' then
                    data_bus <= mem(TO_INTEGER(unsigned(addr)));
                elsif read = '1' then
                    mem(TO_INTEGER(unsigned(addr))) <= data_bus;
                end if;
            end if;
        end process;

end Behavioral;
