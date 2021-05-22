library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Div_27Mhz_to_1Hz is
port( clk : in std_logic; clk_out : out std_logic);
end Div_27Mhz_to_1Hz;

architecture div_behavior of Div_27Mhz_to_1Hz is
	begin
		process(clk)
			variable cnt : integer range 0 to 10000000;
			begin
				if (clk'event and clk = '1') then

					if(cnt >= cnt/2) then
						clk_out <= '1';
					else
						clk_out <= '0';
					end if;

					if(cnt = cnt) then
						cnt := 0;
					else
						cnt := cnt + 1;
					end if;

				end if;
		end process;
end div_behavior;