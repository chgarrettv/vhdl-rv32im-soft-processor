-- Claude Garrett V, 4/29/2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

entity uart_trx is
	generic(
		g_CYCLE_COUNT : positive := 108
	);
	port(
		CLK100MHZ : in std_logic; -- Clock.
		uart_txd_in : in std_logic; -- Input line.
		uart_rxd_out : out std_logic;
		led : out std_logic_vector(3 downto 0);
		ck_io41 : out std_logic -- Output to mirror the UART input for testing.
	);
end uart_trx;

architecture rtl of uart_trx is
	signal r_trx_clk : std_logic := '0';
	signal r_trx_cycles : natural range 0 to (g_CYCLE_COUNT - 1) := 0;
	--signal rx_data_dummy : std_logic_vector(3 downto 0) := (others => '0');
	
	signal r_trx_data : std_logic_vector(7 downto 0) := X"00";
	signal r_tx_send : std_logic := '0';
	signal r_tx_sending : std_logic := '0';
	signal r_tx_done : std_logic := '0';
begin
		
	uart_tx : entity work.uart_tx
		generic map(
			g_BAUD => 115200,
			g_CLK_FREQ => 921600
		) port map(
			i_clk => r_trx_clk,
			i_tx_data => r_trx_data,
			i_tx_send => r_tx_send,
			i_tx_valid => r_tx_send,
			o_tx => uart_rxd_out,
			o_tx_sending => r_tx_sending,
			o_tx_done => r_tx_done
		);
		
	uart_rx : entity work.uart_rx
		generic map(
			g_BAUD => 115200,
			g_CLK_FREQ => 921600,
			g_BITS => 8
		) port map(
			i_clk => r_trx_clk,
			i_rx => uart_txd_in,
			o_rx_data => r_trx_data,
			o_rx_valid => r_tx_send
		);
		
	p_TRX_CLOCK : process(CLK100MHZ) begin -- This should divide the 100 MHz clock down to a 921,600 KHz clock
		if rising_edge(CLK100MHZ) then
			if r_trx_cycles = ((g_CYCLE_COUNT - 1) / 2) then
				r_trx_cycles <= 0;
				r_trx_clk <= not r_trx_clk;
			else
				r_trx_cycles <= r_trx_cycles + 1;
			end if;
		end if;
	end process p_TRX_CLOCK;
	
	ck_io41 <= uart_txd_in;
	led <= r_trx_data(3 downto 0);
end rtl;
