library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity BCD_5_bit_to_7seg is
port(
BCD:in std_logic_vector(5 downto 0);
seg:out std_logic_vector(6 downto 0)
);

end BCD_5_bit_to_7seg;

architecture conv_behavior of BCD_5_bit_to_7seg is
begin
process(BCD)
begin
if    BCD = "000000" then seg <= "0000001";--0
elsif BCD = "000001" then seg <= "1001111";--1
elsif BCD = "000010" then seg <= "0010010";--2
elsif BCD = "000011" then seg <= "0000110";--3
elsif BCD = "000100" then seg <= "1001100";--4
elsif BCD = "000101" then seg <= "0100100";--5
elsif BCD = "000110" then seg <= "0100000";--6
elsif BCD = "000111" then seg <= "0001111";--7
elsif BCD = "001000" then seg <= "0000000";--8
elsif BCD = "001001" then seg <= "0000100";--9
else seg <= "1001001";--err
end if;
end process;
end conv_behavior;