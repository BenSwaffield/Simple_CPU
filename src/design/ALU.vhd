----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.04.2024 22:02:50
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
    Port ( reg_a : inout STD_LOGIC_VECTOR (7 downto 0);
           reg_b : inout STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           alu_instr : in STD_LOGIC_VECTOR (2 downto 0));
end ALU;

architecture Behavioral of ALU is
    
    --signal add_out : std_logic_vector(7 downto 0);
    --signal sub_out : std_logic_vector(7 downto 0);


begin

    main_alu : process(clk)
    begin
        if rising_edge(clk) then
            case alu_instr is
                when "000" =>
                    reg_a <= reg_a + reg_b;
                when "001" => 
                    reg_a <= reg_a - reg_b;
                when "010" => 
                    reg_a <= reg_a and reg_b;
                when "011" => 
                    reg_a <= reg_a or reg_b;
                when "100" => 
                    reg_a <= reg_a xor reg_b;
                when "101" => 
                    reg_a <= not reg_a;
                when others =>
                    reg_a <= reg_a; 
            end case;
        end if;
    end process;
    
end Behavioral;
