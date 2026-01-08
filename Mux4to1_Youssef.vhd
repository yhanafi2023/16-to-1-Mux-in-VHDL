LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY Mux4to1_Youssef IS
    PORT (
        R1, R2, x1,x2,x3,x4 : IN  STD_LOGIC;
        Y       : OUT STD_LOGIC
    );
END Mux4to1_Youssef;
ARCHITECTURE BEHAVIOR of Mux4to1_Youssef IS
SIGNAL o,r : STD_LOGIC;
COMPONENT Mux2to1_Youssef IS
    PORT ( 
		S, I0, I1 : IN STD_LOGIC;
		Y		: OUT STD_LOGIC
	);
END COMPONENT Mux2to1_Youssef;
BEGIN
    Mux1 : Mux2to1_Youssef PORT MAP (R1,x1,x2,o);
    Mux2 : Mux2to1_Youssef PORT MAP (R1,x3,x4,r);
    Mux3 : Mux2to1_Youssef PORT MAP (R2,o,r,Y);
END BEHAVIOR;