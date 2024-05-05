----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.04.2024 23:34:33
-- Design Name: 
-- Module Name: Program_Counter - Behavioral
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

entity Program_Counter is
    Port ( clk : in std_logic;
           instr_addr : inout STD_LOGIC_VECTOR (7 downto 0);
           incr : in STD_LOGIC;
           set : in STD_LOGIC);
end Program_Counter;

architecture Behavioral of Program_Counter is

    signal addr_mem : std_logic_vector(7 downto 0);
begin
    
    instr_mem : process(clk)
        begin
            if rising_edge(clk) then
                if incr = '1' then
                    addr_mem <= addr_mem + 1;
                end if;
            end if;
        end process;

end Behavioral;
