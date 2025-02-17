library ieee;	   
use ieee.std_logic_1164.all; 


entity mux_5a1_n is
	generic(
	n	:	integer := 10
	);
	port(
	x0,x1,x2,x3,x4	: in std_logic_vector(n-1 downto 0);
	s			: in std_logic_vector(5 downto 0);
	y			: out std_logic_vector(n-1 downto 0)
	);
end mux_5a1_n;


architecture combinacional of mux_5a1_n is 
begin
	process (s,x0,x1,x2,x3,x4)
	begin
		case s is
			when "000000" 	=> y<=x4;
			when "000001"	=> y<=x3;
			when "000010" 	=> y<=x2;
			when "000011" 	=> y<=x1;
			when others 	=> y<=x0;
		end case;
	end process;
end combinacional;