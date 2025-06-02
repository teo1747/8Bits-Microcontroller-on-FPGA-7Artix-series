----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2025 11:46:54 AM
-- Design Name: 
-- Module Name: tb_memory - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity tb_memory is

end tb_memory;

architecture Behavioral of tb_memory is

-- Signals
    signal address     : std_logic_vector(7 downto 0) := (others => '0');
    signal data_in     : std_logic_vector(7 downto 0) := (others => '0');
    signal write       : std_logic := '0';
    signal clock       : std_logic := '0';
    signal reset       : std_logic := '0';
    signal data_out    : std_logic_vector(7 downto 0);

    signal port_in  : std_logic_vector(7 downto 0) := x"AA";
    signal port_out : std_logic_vector(7 downto 0);

    -- Map inputs and outputs for port vectors
    signal port_in_00,port_in_01,port_in_02,port_in_03,port_in_04,port_in_05,port_in_06,port_in_07,port_in_08,port_in_09,port_in_10,port_in_11,port_in_12,port_in_13,port_in_14,port_in_15 : std_logic_vector(7 downto 0);
    signal port_out_00,port_out_01,port_out_02,port_out_03,port_out_04,port_out_05,port_out_06,port_out_07,port_out_08,port_out_09,port_out_10,port_out_11,port_out_12,port_out_13,port_out_14,port_out_15 : std_logic_vector(7 downto 0);

-- Component declaration of memory
component memory
        port (
            address      : in std_logic_vector(7 downto 0);
            data_in      : in std_logic_vector(7 downto 0);
            write        : in std_logic;
            port_in_00   : in std_logic_vector(7 downto 0);
            port_in_01   : in std_logic_vector(7 downto 0);
            port_in_02   : in std_logic_vector(7 downto 0);
            port_in_03   : in std_logic_vector(7 downto 0);
            port_in_04   : in std_logic_vector(7 downto 0);
            port_in_05   : in std_logic_vector(7 downto 0);
            port_in_06   : in std_logic_vector(7 downto 0);
            port_in_07   : in std_logic_vector(7 downto 0);
            port_in_08   : in std_logic_vector(7 downto 0);
            port_in_09   : in std_logic_vector(7 downto 0);
            port_in_10   : in std_logic_vector(7 downto 0);
            port_in_11   : in std_logic_vector(7 downto 0);
            port_in_12   : in std_logic_vector(7 downto 0);
            port_in_13   : in std_logic_vector(7 downto 0);
            port_in_14   : in std_logic_vector(7 downto 0);
            port_in_15   : in std_logic_vector(7 downto 0);
            clock, reset : in std_logic;
            data_out     : out std_logic_vector(7 downto 0);
            port_out_00  : out std_logic_vector(7 downto 0);
            port_out_01  : out std_logic_vector(7 downto 0);
            port_out_02  : out std_logic_vector(7 downto 0);
            port_out_03  : out std_logic_vector(7 downto 0);
            port_out_04  : out std_logic_vector(7 downto 0);
            port_out_05  : out std_logic_vector(7 downto 0);
            port_out_06  : out std_logic_vector(7 downto 0);
            port_out_07  : out std_logic_vector(7 downto 0);
            port_out_08  : out std_logic_vector(7 downto 0);
            port_out_09  : out std_logic_vector(7 downto 0);
            port_out_10  : out std_logic_vector(7 downto 0);
            port_out_11  : out std_logic_vector(7 downto 0);
            port_out_12  : out std_logic_vector(7 downto 0);
            port_out_13  : out std_logic_vector(7 downto 0);
            port_out_14  : out std_logic_vector(7 downto 0);
            port_out_15  : out std_logic_vector(7 downto 0)
        );
    end component;

begin

-- DUT instantiation
    DUT: memory
        port map (
            address      => address,
            data_in      => data_in,
            write        => write,
            clock        => clock,
            reset        => reset,
            data_out     => data_out,
            port_in_00   => port_in_00, port_in_01 => port_in_01,
            port_in_02   => port_in_02, port_in_03 => port_in_03,
            port_in_04   => port_in_04, port_in_05 => port_in_05,
            port_in_06   => port_in_06, port_in_07 => port_in_07,
            port_in_08   => port_in_08, port_in_09 => port_in_09,
            port_in_10   => port_in_10, port_in_11 => port_in_11,
            port_in_12   => port_in_12, port_in_13 => port_in_13,
            port_in_14   => port_in_14, port_in_15 => port_in_15,
            port_out_00  => port_out_00, port_out_01 => port_out_01,
            port_out_02  => port_out_02, port_out_03 => port_out_03,
            port_out_04  => port_out_04, port_out_05 => port_out_05,
            port_out_06  => port_out_06, port_out_07 => port_out_07,
            port_out_08  => port_out_08, port_out_09 => port_out_09,
            port_out_10  => port_out_10, port_out_11 => port_out_11,
            port_out_12  => port_out_12, port_out_13 => port_out_13,
            port_out_14  => port_out_14, port_out_15 => port_out_15
        );


  -- Clock generation
    clk_process : process
    begin
        clock <= '0';
        wait for 10 ns;
        clock <= '1';
        wait for 10 ns;
    end process;

    -- Assign inputs
    port_in_00 <= x"55";
    port_in_01 <= x"66";
    port_in_02 <= x"77";
    port_in_03 <= x"88";
    port_in_04 <= x"99";
    port_in_05 <= x"AA";
    port_in_06 <= x"BB";
    port_in_07 <= x"CC";
    port_in_08 <= x"DD";
    port_in_09 <= x"EE";
    port_in_10 <= x"11";
    port_in_11 <= x"22";
    port_in_12 <= x"33";
    port_in_13 <= x"44";
    port_in_14 <= x"55";
    port_in_15 <= x"66";

    -- Stimulus
    stim_proc: process
    begin
        -- Reset
        reset <= '1';
        wait for 10 ns;
        reset <= '0';

        -- Write to RAM (address 0x80 = 128)
        address <= x"80";
        data_in <= x"AB";
        write <= '1';
        wait for 10 ns;
        write <= '0';

        -- Read from RAM
        
        address <= x"05";  -- should read x"AB"
        wait for 20 ns;

        -- Read from input port 0xF0
        address <= x"f0";
        wait for 20 ns;

        -- Write to output port (e.g., 0xE1)
        address <= x"E1";
        data_in <= x"FA";
        write <= '1';
        wait for 20 ns;
        write <= '0';

        -- End simulation
        wait;
    end process;

end Behavioral;

