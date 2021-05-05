-- Claude Garrett V, 2/28/2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uart_controller is
    Port ( uart_txd_in : in STD_LOGIC;
           uart_rxd_out : out STD_LOGIC);
end uart_controller;

architecture Behavioral of uart_controller is begin
	uart_rxd_out <= uart_txd_in;
end Behavioral;
