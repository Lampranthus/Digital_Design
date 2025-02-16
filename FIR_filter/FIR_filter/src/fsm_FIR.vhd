library ieee;
use ieee.std_logic_1164.all;

entity fsm_FIR is
	port(	
		RST : in std_logic;
		CLK : in std_logic;
		STF : in std_logic;
		EOP : in std_logic;
		REG : out std_logic;
		RDY : out std_logic		
	);
end fsm_FIR;

architecture fsm of fsm_FIR is	

signal qp, qn : std_logic; 

begin  
	
	c1 : process(qp, STF, EOP)
	begin
		
		case(qp) is
		
		--s0--
		when '0' =>
		
		REG <= '0'; 
		RDY <= '1'; 
		
		if (STF='1') then
			Qn <= '1'; 
		else 
			Qn <= Qp; 
		end if;
	
		--s1--
		when others => 
		
		REG <= '0'; 
		RDY <= '0'; 
		
		if (EOP='1') then
			Qn <= '0'; 
		else 
			Qn <= Qp; 
		end if;
		
		end case;
		
	end process;
	
	secuencial : process(RST,CLK)
	begin
		if(RST='0') then
			qp <= '0';
		elsif(CLK'event and CLK='1') then
			qp <= qn;
		end if;
	end process;
	
end fsm;