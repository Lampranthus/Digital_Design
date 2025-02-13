library IEEE; 
use IEEE.std_logic_1164.all; 
 
entity MAC is
port( 
	RST : in std_logic; 
	CLK : in std_logic; 
	STF : in std_logic; 
	X : in std_logic_vector(17 downto 0); 
	A : in std_logic_vector(35 downto 0); 
	N : in std_logic_vector(5 downto 0); 
	S : in std_logic_vector(5 downto 0); 
	EOF : out std_logic; 
	I : out std_logic_vector(5 downto 0); 
	Y : out std_logic_vector(17 downto 0) 
); 
end MAC; 
 
architecture Bloques of MAC is
------------------------------------------------ 
component multiplicador_n is
	
	generic(
	n : integer := 18
	);
	
	port(
	A,B : in std_logic_vector(n-1 downto 0);
	M : out std_logic_vector(2*n-1 downto 0)
	); 
end component; 
------------------------------------------------ 
component Sumador_n is
	generic(
	n : integer :=38
	);
	port(
	A,B :	in std_logic_vector(n-1 downto 0);
	S	:	out std_logic_vector(n-1 downto 0)
	);
end component;
------------------------------------------------ 
component registro_paralelo_rac is
	
	generic(
	
	n : integer := 12
	
	);
	
	port(
	
	Din : in std_logic_vector(n-1 downto 0);   
	
	OPR : in std_logic_vector(1 downto 0);
	
	RST,CLK : in std_logic; 
	
	Qout : out std_logic_vector(n-1 downto 0)	
	
	);
end component; 
------------------------------------------------ 
component registro_paralelo_rr is
	
	generic(
	
	n : integer := 12
	
	);
	
	port(
	
	Din : in std_logic_vector(n-1 downto 0);   
	
	OPR : in std_logic_vector(1 downto 0);
	
	RST,CLK : in std_logic; 
	
	Qout : out std_logic_vector(n-1 downto 0)	
	
	);
end component; 
------------------------------------------------ 
component contador_cdhb_n is
	generic(
		n : integer :=2
	);
	port(
		RST,CLK : in std_logic;
		opc : in std_logic_vector(1 downto 0);
		Q : in std_logic_vector(n-1 downto 0);
		I : out std_logic_vector(n-1 downto 0);
		Z : out std_logic
	);
end component; 
------------------------------------------------ 
component Ajuste 
port( 
	R : in std_logic_vector(59 downto 0); 
	S : in std_logic_vector(5 downto 0); 
	Y : out std_logic_vector(17 downto 0) 
); 
end component; 
------------------------------------------------ 
component FSM 
port( 
	RST : in std_logic; 
	CLK : in std_logic; 
	STF : in std_logic; 
	Z : in std_logic; 
	LDA : out std_logic; 
	LDR : out std_logic; 
	EOF : out std_logic; 
	OPC : out std_logic_vector(1 downto 0) 
); 
end component; 
------------------------------------------------ 
signal Z, LDA, LDR : std_logic; 
signal OPC : std_logic_vector(1 downto 0); 
signal M : std_logic_vector(53 downto 0); 
signal P, U, Q, R : std_logic_vector(59 downto 0); 
 
begin

P(59 downto 54) <= (others => M(53)); 
P(53 downto 0) <= M; 

Bloque_1 : Multiplicador port map(X,A,M); 
Bloque_2 : Sumador port map(Q,P,U); 
Bloque_3 : Acumulador port map(RST,CLK,LDA,U,Q); 
Bloque_4 : Resultado port map(RST,CLK,LDR,U,R); 
Bloque_5 : Contador port map(RST,CLK,OPC,N,Z,I); 
Bloque_6 : Ajuste port map(R,S,Y); 
Bloque_7 : FSM port map(RST,CLK,STF,Z,LDA,LDR,EOF,OPC); 

end Bloques;