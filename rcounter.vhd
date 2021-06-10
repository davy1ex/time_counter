library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity rcounter isPort ( Clk : in std_logic;
 updown : in std_logic;
 reset : in std_logic;
 data : inout std_logic_vector(15 downto 0));
end rcounter;
architecture Behavioral of rcounter is
begin
process (Clk,reset)
begin
 if reset='1' then
 data <= (others => '0');
 elsif Clk='1' and Clk'event then
 if updown ='1' then
 data <= data + 1;
 else
 data <= data - 1;
 end if;
 end if;
end process;
end Behavioral;