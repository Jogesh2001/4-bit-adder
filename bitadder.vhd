----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:55:02 03/11/2020 
-- Design Name: 
-- Module Name:    bitadder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bitadder is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end bitadder;

architecture Behavioral of bitadder is
Component adder is
      port (A: in STD_LOGIC; 
         B : in STD_LOGIC; 
         Cin : in STD_LOGIC; 
         S : out STD_LOGIC; 
         Cout  : out STD_LOGIC
      ); 
   end component;         
   signal k : std_logic_vector (2 downto 0); 
   
begin 
   
   adder_0 : adder  port map (A(0),B(0),Cin,S(0),k(0)); 
   adder_1 : adder port map (A(1),B(1),k(0),S(1),k(1)); 
   adder_2 : adder port map (A(2),B(2),k(1),S(2),k(2));
   adder_3 : adder port map (A(3),B(3),k(2),S(3),Cout); 



end Behavioral;

