library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Div_27Mhz_to_1Hz is
port( clk : in std_logic; clk_out : out std_logic);
end Div_27Mhz_to_1Hz;

architecture div_behavior of Div_27Mhz_to_1Hz is
	begin
		process(clk)
			variable cnt : integer range 0 to 27000000;
			begin
				if (clk'event and clk = '1') then

					if(cnt >= 13500000) then
						clk_out <= '1';
					else
						clk_out <= '0';
					end if;

					if(cnt = 27000000) then
						cnt := 0;
					else
						cnt := cnt + 1;
					end if;

				end if;
		end process;
end div_behavior;

-- library IEEE;
-- use IEEE.STD_LOGIC_1164.ALL;
-- use IEEE.STD_LOGIC_ARITH.ALL;
-- use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- entity rcounter is

-- 	Port ( 
-- 		Clk : in std_logic;
-- 		-- updown : in std_logic;
-- 		reset : in std_logic;
-- 		clk_out : out std_logic
-- 	);
-- end rcounter;

-- architecture Behavioral of rcounter is
-- begin
-- 	process (Clk,reset)
-- 	begin
-- 		if reset='1' then
-- 			clk_out <= (others => '0');
-- 	 	elsif Clk='1' and Clk'event then
-- 	 		clk_out <= clk_out + 1;
-- 	 	end if;
	 	
-- 	end process;
-- end Behavioral;