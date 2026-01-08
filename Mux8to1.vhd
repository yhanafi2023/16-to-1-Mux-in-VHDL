LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY Mux8to1_Youssef IS
    PORT (
        D1, D2,D3,f1,f2,f3,f4,f5,f6,f7,f8 : IN  STD_LOGIC;
        Y       : OUT STD_LOGIC
    );
END Mux8to1_Youssef;
ARCHITECTURE BEHAVIOR of Mux8to1_Youssef IS
SIGNAL o,r : STD_LOGIC;
COMPONENT Mux4to1_Youssef IS
    PORT ( 
        R1, R2,x1,x2,x3,x4 : IN STD_LOGIC;
        Y        : OUT STD_LOGIC
    );
END COMPONENT Mux4to1_Youssef;
COMPONENT Mux2to1_Youssef IS
    PORT ( 
        S, I0, I1 : IN STD_LOGIC;
        Y        : OUT STD_LOGIC
    );
END COMPONENT Mux2to1_Youssef;
BEGIN
    Mux1 : Mux4to1_Youssef PORT MAP (D2,D3,f1,f2,f3,f4, o);
    Mux2 : Mux4to1_Youssef PORT MAP (D2,D3,f5,f6,f7,f8, r);
    Mux3 : Mux2to1_Youssef PORT MAP (D1,o,r,Y);
END BEHAVIOR;