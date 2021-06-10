----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:45 04/14/2021 
-- Design Name: 
-- Module Name:    mux - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux is
    Port ( A : in  STD_LOGIC_VECTOR (5 downto 0);
           B : in  STD_LOGIC_VECTOR (5 downto 0);
           C : in  STD_LOGIC_VECTOR (5 downto 0);
           D : in  STD_LOGIC_VECTOR (5 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Q_OUT : out  STD_LOGIC_VECTOR (5 downto 0));
end mux;

architecture Behavioral of mux is

begin
process (S,A,B,C,D)
begin
   case S is
      when "00" => Q_OUT <= A;
      when "01" => Q_OUT <= B;
      when "10" => Q_OUT <= C;
      when "11" => Q_OUT <= D;
      when others => Q_OUT <= A;
   end case;
end process;

end Behavioral;
