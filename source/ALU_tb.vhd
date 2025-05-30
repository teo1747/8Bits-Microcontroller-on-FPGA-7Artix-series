----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/30/2025 08:25:43 AM
-- Design Name: 
-- Module Name: ALU_tb - Behavioral
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

entity ALU_tb is
end ALU_tb;

architecture behavior of ALU_tb is

    -- Signals
    signal clk       : std_logic := '0';
    signal A, B      : std_logic_vector(7 downto 0) := (others => '0');
    signal ALU_Sel   : std_logic_vector(2 downto 0) := (others => '0');
    signal Result    : std_logic_vector(7 downto 0);
    signal NZVC      : std_logic_vector(3 downto 0);

    -- Component declaration
    component ALU
        port (
            A, B      : in std_logic_vector(7 downto 0);
            ALU_Sel   : in std_logic_vector(2 downto 0);
            NZVC      : out std_logic_vector(3 downto 0);
            Result    : out std_logic_vector(7 downto 0)
        );
    end component;

begin

    -- Instantiate ALU
    uut: ALU
        port map (
            A        => A,
            B        => B,
            ALU_Sel  => ALU_Sel,
            NZVC     => NZVC,
            Result   => Result
        );

    -- 🕒 Clock process: 10 ns period (100 MHz)
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
    end process;

    -- 📋 Stimulus process synchronized to rising clock edge
    stim_proc: process
    begin
        wait for 20 ns;  -- Initial delay

        -- ADD A + B
        wait until rising_edge(clk);
        A <= "00001111";   -- 0x0F
        B <= "00000001";   -- 0x01
        ALU_Sel <= "000";  -- ADD

        wait until rising_edge(clk);

        -- SUB B - A
        wait until rising_edge(clk);
        ALU_Sel <= "001";

        wait until rising_edge(clk);

        -- AND
        wait until rising_edge(clk);
        ALU_Sel <= "010";

        wait until rising_edge(clk);

        -- OR
        wait until rising_edge(clk);
        ALU_Sel <= "011";

        wait until rising_edge(clk);

        -- INC A
        wait until rising_edge(clk);
        ALU_Sel <= "100";

        wait until rising_edge(clk);

        -- DEC A
        wait until rising_edge(clk);
        ALU_Sel <= "101";

        wait for 20 ns;
        assert false report "Simulation finished!" severity note;
        wait;
    end process;

end behavior;
