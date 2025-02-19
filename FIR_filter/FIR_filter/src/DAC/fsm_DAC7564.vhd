library ieee;
use ieee.std_logic_1164.all;

entity fsm_DAC7564 is 
	
	port(
	
	RST		: in std_logic;	
	CLK		: in std_logic;	
	--entradas
	init	: in std_logic;							--in1
	valid	: in std_logic;							--in2
	--salidas
	start	: out std_logic;						--out1
	fin		: out std_logic							--out2
	
	
	);
end fsm_DAC7564;

architecture fsm of fsm_DAC7564 is	


signal qp, qn : std_logic_vector(2 downto 0); 

begin  
	
	c1 : process(qp,bt,valid,init)
	begin
		
		case(qp) is
		
		--s0-- apagado
		when "000" =>	
		
		start	<= '0';				--out2 --no trans
		fin		<= '1';				--out5 --fin
		
		if(init='1') then
			qn <= "001"; --siguiente
		else
			qn <= qp   ; --se mantiene
		end if;

		
		--s1 --primera palabra
		when "001" =>	
		
		start	<= '1';				--out2 --trans
		fin		<= '0';				--out5 --no fin
		
		if(valid='1') then
			qn <= "010"; --siguiente
		else
			qn <= qp   ; --se mantiene
		end if;
		
		--s5--
		when "101" =>	
		
		start	<= '0';				--out2 --trans
		fin		<= '0';				--out5 --no fin
		
		if(bt='1') then
			qn <= "110"; --siguiente
		else
			qn <= qp   ; --se mantiene
		end if;	 
		
		--s6-- 0 ldac --fin
		when others =>	
		
		mux		<= "10";			--out1 --tercera palabra
		start	<= '0';				--out2 --trans
		ldac	<= '0';				--out3 --no load
		clr		<= '0';				--out4 --cuenta
		fin		<= '0';				--out5 --no fin
		
		if(bt='1') then
			qn <= "000"; --loop
		else
			qn <= qp   ; --se mantiene
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