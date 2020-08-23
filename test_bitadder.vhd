--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:37:34 03/12/2020
-- Design Name:   
-- Module Name:   C:/Users/jogesh/OneDrive/Desktop/project gopal sir/projectnck/test_bitadder.vhd
-- Project Name:  projectnck
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bitadder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_bitadder IS
END test_bitadder;
 
ARCHITECTURE behavior OF test_bitadder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bitadder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bitadder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );

   -- Clock process definitions
   
   -- Stimulus process
   stim_process:process 
	begin 
	A <= "0100";
	B <= "1000";
	
	wait for 100 ns;
	A <= "1000";
	B <= "1010";
	
	wait for 100 ns;
	A <= "1010";
	B <= "1010";
	
	wait for 100 ns;
	A <= "1001";
	B <= "1110";
	
	wait for 100 ns;
	A <= "1110";
	B <= "1010";
	
	wait for 100 ns;
	A <= "1111";
	B <= "1011";
	
	wait for 100 ns;
	A <= "1111";
	B <= "1111";
	
	wait for 100 ns;
	A <= "1001";
	B <= "1010";
	
	wait for 100 ns;
	A <= "1001";
	B <= "1111";
	
	wait for 100 ns;
	A <= "1001";
	B <= "1010";
	
	wait for 100 ns;
	end process;
	
END;
