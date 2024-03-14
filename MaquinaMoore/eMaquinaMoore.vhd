library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eMaquinaMoore is
    Port ( X : in STD_LOGIC;
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           F : out STD_LOGIC);
end eMaquinaMoore;

architecture Behavioral of eMaquinaMoore is

type state_type is (S0, S1, S2, S3); --tipo de dato para los estados y nombre de los estados
signal state, next_state : state_type; --señales para los estados actual y siguiente
signal F_i : std_logic;  --se crean todas las señales internas de salida (clones de la salida)

begin

SYNC_PROC: process (CLK)
begin
   if (CLK'event and CLK = '1') then
      if (RST = '1') then
         state <= S0;
         F <= '0'; --se asigna el valor de la salida
      else
         state <= next_state;
         F<= F_i; 
      -- assign other outputs to internal signals
      end if;
   end if;
end process;

--MOORE State-Machine - Outputs based on state only
OUTPUT_DECODE: process (state)
begin
   --insertar todos los estados con sus respectivas salidas
   if state = S0 then
      F_i <= '0';
   elsif state = S1 then
      F_i <= '0';
   elsif state = S2 then
      F_i <= '0';
   else
      F_i <= '1';
   end if;
end process;

NEXT_STATE_DECODE: process (state, X) --insertar todas las transiciones de estados con sus respectivas condiciones 
begin
   next_state <= state;  
   case (state) is
      when S0 =>
         if X = '1' then
            next_state <= S1;
         else 
            next_state <= S0;
         end if;
      when S1 =>
         if X = '1' then
            next_state <= S1;
         else 
            next_state <= S2;
         end if;
      when S2 =>
         if X = '1' then
            next_state <= S3;
         else 
            next_state <= S0;
         end if;
      when others =>
         if X = '1' then
            next_state <= S1;
         else 
            next_state <= S2;
         end if;
   end case;
end process;

end Behavioral;
