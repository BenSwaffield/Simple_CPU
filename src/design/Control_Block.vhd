----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.04.2024 22:44:13
-- Design Name: 
-- Module Name: Control_Block - Behavioral
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

entity Control_Block is
    Port ( clk : in STD_LOGIC;
           instr : in STD_LOGIC_VECTOR (23 downto 0);
           pc_addr : inout STD_LOGIC_VECTOR (7 downto 0);
           pc_set : out std_logic;
           pc_inc : out std_logic;
           mem_addr : out std_logic_vector(7 downto 0);
           mem_read : out std_logic;
           mem_write : out std_logic;
           alu_instr : out std_logic_vector(2 downto 0);
           reg_a_read : out std_logic;
           reg_a_write : out std_logic;
           reg_b_read : out std_logic;
           reg_b_write : out std_logic);
           
end Control_Block;

architecture Behavioral of Control_Block is
    
begin

    process 


end Behavioral;
