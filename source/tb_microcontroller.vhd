----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2025 12:06:34 PM
-- Design Name: 
-- Module Name: tb_microcontroller - Behavioral
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


entity tb_microcontroller is
--  Port ( );
end tb_microcontroller;

architecture Behavioral of tb_microcontroller is

  constant t_clk_per : time := 20 ns;  -- Period of a 50MHZ Clock

-- Component Declaration

  component microcontroller
    port   ( clock          : in   std_logic;
             reset          : in   std_logic;
             port_in_00     : in   std_logic_vector (7 downto 0);
             port_in_01     : in   std_logic_vector (7 downto 0);
             port_in_02     : in   std_logic_vector (7 downto 0);
             port_in_03     : in   std_logic_vector (7 downto 0);
             port_in_04     : in   std_logic_vector (7 downto 0);
             port_in_05     : in   std_logic_vector (7 downto 0);
             port_in_06     : in   std_logic_vector (7 downto 0);               
             port_in_07     : in   std_logic_vector (7 downto 0);
             port_in_08     : in   std_logic_vector (7 downto 0);
             port_in_09     : in   std_logic_vector (7 downto 0);
             port_in_10     : in   std_logic_vector (7 downto 0);
             port_in_11     : in   std_logic_vector (7 downto 0);
             port_in_12     : in   std_logic_vector (7 downto 0);
             port_in_13     : in   std_logic_vector (7 downto 0);
             port_in_14     : in   std_logic_vector (7 downto 0);
             port_in_15     : in   std_logic_vector (7 downto 0);                                                                   
             port_out_00    : out  std_logic_vector (7 downto 0);
             port_out_01    : out  std_logic_vector (7 downto 0);
             port_out_02    : out  std_logic_vector (7 downto 0);
             port_out_03    : out  std_logic_vector (7 downto 0);
             port_out_04    : out  std_logic_vector (7 downto 0);
             port_out_05    : out  std_logic_vector (7 downto 0);
             port_out_06    : out  std_logic_vector (7 downto 0);
             port_out_07    : out  std_logic_vector (7 downto 0);
             port_out_08    : out  std_logic_vector (7 downto 0);
             port_out_09    : out  std_logic_vector (7 downto 0);
             port_out_10    : out  std_logic_vector (7 downto 0);
             port_out_11    : out  std_logic_vector (7 downto 0);
             port_out_12    : out  std_logic_vector (7 downto 0);
             port_out_13    : out  std_logic_vector (7 downto 0);
             port_out_14    : out  std_logic_vector (7 downto 0);
             port_out_15    : out  std_logic_vector (7 downto 0));
  end component;
  
   signal  clock_TB       : std_logic;
    signal  reset_TB       : std_logic;
    signal  port_out_00_TB : std_logic_vector (7 downto 0);
    signal  port_out_01_TB : std_logic_vector (7 downto 0);
    signal  port_out_02_TB : std_logic_vector (7 downto 0);
    signal  port_out_03_TB : std_logic_vector (7 downto 0);
    signal  port_out_04_TB : std_logic_vector (7 downto 0);
    signal  port_out_05_TB : std_logic_vector (7 downto 0);
    signal  port_out_06_TB : std_logic_vector (7 downto 0);
    signal  port_out_07_TB : std_logic_vector (7 downto 0);
    signal  port_out_08_TB : std_logic_vector (7 downto 0);
    signal  port_out_09_TB : std_logic_vector (7 downto 0);
    signal  port_out_10_TB : std_logic_vector (7 downto 0);
    signal  port_out_11_TB : std_logic_vector (7 downto 0);
    signal  port_out_12_TB : std_logic_vector (7 downto 0);
    signal  port_out_13_TB : std_logic_vector (7 downto 0);
    signal  port_out_14_TB : std_logic_vector (7 downto 0);
    signal  port_out_15_TB : std_logic_vector (7 downto 0);
    signal  port_in_00_TB  : std_logic_vector (7 downto 0);
    signal  port_in_01_TB  : std_logic_vector (7 downto 0);
    signal  port_in_02_TB  : std_logic_vector (7 downto 0);
    signal  port_in_03_TB  : std_logic_vector (7 downto 0);
    signal  port_in_04_TB  : std_logic_vector (7 downto 0);
    signal  port_in_05_TB  : std_logic_vector (7 downto 0);
    signal  port_in_06_TB  : std_logic_vector (7 downto 0);
    signal  port_in_07_TB  : std_logic_vector (7 downto 0);
    signal  port_in_08_TB  : std_logic_vector (7 downto 0);
    signal  port_in_09_TB  : std_logic_vector (7 downto 0);
    signal  port_in_10_TB  : std_logic_vector (7 downto 0);
    signal  port_in_11_TB  : std_logic_vector (7 downto 0);
    signal  port_in_12_TB  : std_logic_vector (7 downto 0);
    signal  port_in_13_TB  : std_logic_vector (7 downto 0);
    signal  port_in_14_TB  : std_logic_vector (7 downto 0);
    signal  port_in_15_TB  : std_logic_vector (7 downto 0);

begin

      micrococontroller_unit : microcontroller
         port map  (clock        => clock_TB,
                    reset        => reset_TB,
                    port_out_00  => port_out_00_TB,
                    port_out_01  => port_out_01_TB,
                    port_out_02  => port_out_02_TB,
                    port_out_03  => port_out_03_TB,
                    port_out_04  => port_out_04_TB,
                    port_out_05  => port_out_05_TB,
                    port_out_06  => port_out_06_TB,
                    port_out_07  => port_out_07_TB,
                    port_out_08  => port_out_08_TB,
                    port_out_09  => port_out_09_TB,
                    port_out_10  => port_out_10_TB,
                    port_out_11  => port_out_11_TB,
                    port_out_12  => port_out_12_TB,
                    port_out_13  => port_out_13_TB,
                    port_out_14  => port_out_14_TB,
                    port_out_15  => port_out_15_TB,                    
                    port_in_00   => port_in_00_TB,
                    port_in_01   => port_in_01_TB,
                    port_in_02   => port_in_02_TB,
                    port_in_03   => port_in_03_TB,
                    port_in_04   => port_in_04_TB,
                    port_in_05   => port_in_05_TB,
                    port_in_06   => port_in_06_TB,
                    port_in_07   => port_in_07_TB,
                    port_in_08   => port_in_08_TB,
                    port_in_09   => port_in_09_TB,
                    port_in_10   => port_in_10_TB,
                    port_in_11   => port_in_11_TB,
                    port_in_12   => port_in_12_TB,
                    port_in_13   => port_in_13_TB,
                    port_in_14   => port_in_14_TB,
                    port_in_15   => port_in_15_TB);
      CLOCK_STIM : process
       begin
          clock_TB <= '0'; wait for 0.5*t_clk_per; 
          clock_TB <= '1'; wait for 0.5*t_clk_per; 
       end process;
       
            RESET_STIM : process
       begin
          reset_TB <= '0'; wait for 0.25*t_clk_per; 
          reset_TB <= '1'; wait; 
       end process;

      PORT_STIM : process
       begin
          port_in_00_TB <= x"00";
          port_in_01_TB <= x"11";          
          port_in_02_TB <= x"22";
          port_in_03_TB <= x"33";          
          port_in_04_TB <= x"44";
          port_in_05_TB <= x"55";          
          port_in_06_TB <= x"66";
          port_in_07_TB <= x"77";          
          port_in_08_TB <= x"88";
          port_in_09_TB <= x"99";          
          port_in_10_TB <= x"AA";
          port_in_11_TB <= x"BB";
          port_in_12_TB <= x"CC";
          port_in_13_TB <= x"DD";
          port_in_14_TB <= x"EE";
          port_in_15_TB <= x"FF"; 
          wait;
       end process;

end Behavioral;
