LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY Mux2to1_Youssef IS
    PORT (
        S, I0, I1 : IN  STD_LOGIC;
        Y       : OUT STD_LOGIC
    );
END Mux2to1_Youssef;
ARCHITECTURE BEHAVIOR of Mux2to1_Youssef IS
SIGNAL o,r : STD_LOGIC;
BEGIN
    o <= (I0 NAND (S NAND S));
    r <= I1 NAND S;
    Y <= o NAND r;
END BEHAVIOR;