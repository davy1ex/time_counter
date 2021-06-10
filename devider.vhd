library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ANDE is
port (
 X1,X2 : in std_logic;
 Y :out std_logic
);
end ANDE;
architecture ANDA of ANDE is
begin
Y<=X1 and X2;
end ANDA;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity JFF is
port (
 J,C,R : in std_logic;
 Q : inout std_logic
);
end JFF;
architecture JK of JFF is
begin
process (C,R)
begin
 if R='1' then
 Q <= '0';
 elsif (C'event and C='1') then
 if J='1' then Q <= not Q;
end if;
 end if;
end process;
end JK;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity divider is
generic (Nd : integer := 24);
 Port ( Clock : in std_logic;
 Clk_led : out std_logic;
 Clk_deb : out std_logic;
 reset : in std_logic);
end divider;
architecture Behavioral of divider is
component JFF
port ( J,C,R : in std_logic;
 Q : inout std_logic);
end component;
component ANDE is
port (
 X1,X2 : in std_logic;
 Y : out std_logic
);
end component;
signal T,V: std_logic_vector(0 to Nd);
begin
T(0)<='1';
Clk_deb<=V(3);
Clk_led<=V(4);
ST0: JFF port map(J=>T(0),C=>Clock,R=>reset,Q=>V(1));
JK1: for i in 1 to Nd-1 generate
 begin
 ST1: ANDE port map(X1=>T(i-1),X2=>V(i),Y=>T(i));
 ST2: JFF port map(J=>T(i),C=>Clock,R=>reset,Q=>V(i+1));
 end generate;
end Behavioral;