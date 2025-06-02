----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2025 10:41:20 AM
-- Design Name: 
-- Module Name: Output_Ports - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


entity Output_Ports is
port (
			address: in std_logic_vector(3 downto 0);
			data_in: in std_logic_vector(7 downto 0);
			write: in std_logic;
			clock: in std_logic;
			reset: in std_logic;
		 port_out_00: out std_logic_vector(7 downto 0); 
         port_out_01: out std_logic_vector(7 downto 0);
         port_out_02: out std_logic_vector(7 downto 0);   
         port_out_03: out std_logic_vector(7 downto 0); 
         port_out_04: out std_logic_vector(7 downto 0);  
         port_out_05: out std_logic_vector(7 downto 0);  
         port_out_06: out std_logic_vector(7 downto 0); 
         port_out_07: out std_logic_vector(7 downto 0); 
         port_out_08: out std_logic_vector(7 downto 0); 
         port_out_09: out std_logic_vector(7 downto 0);
         port_out_10: out std_logic_vector(7 downto 0);  
         port_out_11: out std_logic_vector(7 downto 0); 
         port_out_12: out std_logic_vector(7 downto 0); 
         port_out_13: out std_logic_vector(7 downto 0);  
         port_out_14: out std_logic_vector(7 downto 0);   
         port_out_15: out std_logic_vector(7 downto 0)
		);

end Output_Ports;

architecture Behavioral of Output_Ports is

type data_mem is array (0 to 15 ) of std_logic_vector (7 downto 0);
signal RAM: data_mem :=(
							x"00",x"00",x"00",x"00",-- 0x00: (empty location)
							x"00",x"00",x"00",x"00",-- 0x04: (empty location)
							x"00",x"00",x"00",x"00",-- 0x08: (empty location)
							x"00",x"00",x"00",x"00" -- 0x0C: (empty location)
							);	
							
begin

process(clock,reset)
begin
	if(reset='0') then
		RAM(0) <= x"00";
		RAM(1) <= x"00";
		RAM(2) <= x"00";
		RAM(3) <= x"00";
		RAM(4) <= x"00";
		RAM(5) <= x"00";
		RAM(6) <= x"00";
		RAM(7) <= x"00";
		RAM(8) <= x"00";
		RAM(9) <= x"00";
		RAM(10) <= x"00";
		RAM(11) <= x"00";
		RAM(12) <= x"00";
		RAM(13) <= x"00";
		RAM(14) <= x"00";
		RAM(15) <= x"00";
	elsif(rising_edge(clock)) then
		if(write='1') then
			RAM(conv_integer(unsigned(address))) <= data_in;
		end if;
	end if;
end process;
		 port_out_00 <= RAM(0);
         port_out_01 <= RAM(1);
         port_out_02 <= RAM(2);
         port_out_03 <= RAM(3);
         port_out_04 <= RAM(4);  
         port_out_05 <= RAM(5);
         port_out_06 <= RAM(6); 
         port_out_07 <= RAM(7);
         port_out_08 <= RAM(8);
         port_out_09 <= RAM(9);
         port_out_10 <= RAM(10);
         port_out_11 <= RAM(11);
         port_out_12 <= RAM(12);
         port_out_13 <= RAM(13);
         port_out_14 <= RAM(14);
         port_out_15 <= RAM(15);

end Behavioral;
