# Introduccion a VHDL

## Tipos de datos

- '0': 0 logico
- '1': 1 logico
- 'Z': Estado de alta impedancia
- 'U': Estado desconocido

## Operadores

### Operadores logicos

- **AND**: Y logico
- **OR**: O logico
- **NAND**: Y logico negado
- **NOR**: O logico negado
- **XOR**: O exclusivo
- **XNOR**: O exclusivo negado
- **NOT**: Negacion

### Operadores de asignacion

- **<=**: Asignacion (Se utiliza para asignar valores a las señales)
- **:=**: Asignacion (Se utiliza para asignar valores a las variables)

## Entidades

### Estructura de una entidad

```vhdl
entity nombre_entidad is
  port(
    nombre_señal: tipo_señal;
    ...
  );
end nombre_entidad;
```

**Declaracion de puertos de entrada y salida**

```vhdl
entity nombre_entidad is
  port(
    nombre_del_puerto: in/out tipo_señal; --Usualmente std_logic
    ...
  );
end nombre_entidad;
```

### Arquitecturas en VHDL

- **Dataflow** : Es paralela
- **Behavioral** : Es secuencial

### Estructuras de programacion

- **WITH SELECT WHEN**

```vhdl
entity mux is
  port(
    a,b,sel: in std_logic;
    y: out std_logic;
  );
end mux;

ARCHITECTURE dataflow of mux IS
BEGIN
    WITH sel SELECT
      y <= a WHEN '0',
           b WHEN '1';
END dataflow;
```

- **WHEN ELSE**

```vhdl
entity mux is

  port(
    a,b,sel: in std_logic;
    y: out std_logic;
  );
end mux;

ARCHITECTURE dataflow of mux IS
BEGIN
    y <= a WHEN sel = '0' ELSE b;
END dataflow;
```

- **IF ELSIF**

```vhdl
entity mux is
  port(
    a,b,sel: in std_logic;
    y: out std_logic;
  );
end mux;

ARCHITECTURE behavioral of mux IS
BEGIN
    PROCESS(a,b,sel)
    BEGIN
        IF sel = '0' THEN
            y <= a;
        ELSIF sel = '1' THEN
            y <= b;
        END IF;
    END PROCESS;
END behavioral;
```

Los puertos de salida no pueden ser leidos, por lo que si se desea leer el valor de un puerto de salida, se debe utilizar una senal.

# Circuitos combinacionales

## Multiplexor de 4 a 1

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Z : out STD_LOGIC);
end Mux;

architecture Behavioral of Mux is

begin
    process(A,B,C,D,S0,S1)
        begin
            if(S0 = '0' and S1 = '0') then
                Z <= A;
            elsif(S0 = '1' and S1 = '0') then
                Z <= B;
            elsif(S0 = '0' and S1 = '1') then
                Z <= C;
            else
                Z <= D;
            end if;
    end process;
end Behavioral;
```

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux is
    Port ( I: in STD_LOGIC_VECTOR(3 downto 0);
           S : in STD_LOGIC_VECTOR(1 downto 0);
           Z : out STD_LOGIC);
end Mux;

architecture Behavioral of Mux is
begin
    with S select
        Z <= I(0) when "00",
             I(1) when "01",
             I(2) when "10",
             I(3) when others;
end Behavioral;
```

## DeMultiplexor de 1 a 4

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DeMux is
    Port ( F : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0));
end DeMux;

architecture Behavioral of DeMux is

begin
    process (F, S) is
    begin
        if(S = "00") then
            O(0) <= F;
        elsif(S = "01") then
            O(1) <= F;
        elsif(S = "10") then
            O(2) <= F;
        else
            O(3) <= F;
        end if;
    end process;
end Behavioral;
```

# BCD to 7 Segmentos

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCDTo7SegmentDecoder is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           segment7 : out STD_LOGIC_VECTOR (6 downto 0));
end BCDTo7SegmentDecoder;

architecture Behavioral of BCDTo7SegmentDecoder is

begin
    with bcd select
        segment7 <= "1000000" when "0000",
                    "1111001" when "0001",
                    "0100100" when "0010",
                    "0110000" when "0011",
                    "0011001" when "0100",
                    "0010010" when "0101",
                    "0000010" when "0110",
                    "1111000" when "0111",
                    "0000000" when "1000",
                    "0010000" when "1001",
                    "1111111" when others;
end Behavioral;
```
