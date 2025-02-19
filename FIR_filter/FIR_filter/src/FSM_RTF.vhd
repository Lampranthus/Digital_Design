library ieee;
use ieee.std_logic_1164.all;

entity FSM_RTF is
	port(	
		RST : in std_logic;
		CLK : in std_logic;
		fs	: in std_logic;
		EOP : in std_logic;
		busy: in std_logic;
		REG	: out std_logic;
		STFIR: out std_logic;
		STSPI : out std_logic	
	);
end FSM_RTF;

architecture fsm of FSM_RTF is	


signal qp, qn : std_logic_vector(1 downto 0); 

begin  
	
	c1 : process(qp,fs,EOP,busy)
	begin
		
		case(qp) is
		
		--s0
		when "00" =>
		
		REG <= '1';		--registra
		STFIR	<= '0';	--no fir
		STSPI <= '0';	--no spi
		
		if(fs='1') then
			qn <= "01";
		else
			qn <= qp;
		end if;
		
		--s1--
		when "01" => 
		
		REG <= '0';		--no registra
		STFIR	<= '1';	--fir
		STSPI <= '0';	--no spi
		
		if(EOP='1') then
			qn <= "10";
		else
			qn <= qp;
		end if;
		
		--s2--
		when others => 
		
		REG <= '0';		--no registra
		STFIR	<= '0';	--no fir
		STSPI <= '1';	--spi
		
		if(busy='0') then
			qn <= "01";
		else
			qn <= "00";	    --regresa a s0
		end if;
		
		end case;
		
	end process;
	
	secuencial : process(RST,CLK)
	begin
		if(RST='0') then
			qp <= (others => '0');
		elsif(CLK'event and CLK='1') then
			qp <= qn;
		end if;
	end process;
	
end fsm;