-- Claude Garrett V

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity uart_tx is
	generic(
		g_BAUD : positive := 115200; -- 8x = 921600.
		g_CLK_FREQ : positive := 100000000; -- 1 MHz default. MUST BE 8x BAUD RATE.
		g_BITS : positive := 8; -- 1 byte default.
		g_FLOP_SEND_INPUT : boolean := false;
		g_FLOP_VALID_INPUT : boolean := false
	);
	port(
		i_clk : in std_logic; -- Input clock.
		i_tx_data : in std_logic_vector((g_BITS - 1) downto 0) := (others => '0');
		i_tx_send : in std_logic; -- Input to determine when to send data. Usually connected to a "valid" siganl.
		i_tx_valid : in std_logic; -- Input to tell the transmitter when the data is valid.
		o_tx : out std_logic; -- Output line.
		o_tx_sending : out std_logic; -- High when sending data.
		o_tx_done : out std_logic -- Pulses when data has been transmitted.
	);
end uart_tx;

architecture rtl of uart_tx is
	type t_tx_sm is (
		s_IDLE,
		s_START,
		s_WRITE,
		s_STOP
	);
	signal r_tx_sm : t_tx_sm := s_IDLE;
	
	signal r_tx_send : std_logic := '0';
	signal r_tx_valid : std_logic := '0';
	
	constant CYCLES_PER_BIT : positive := ((g_CLK_FREQ / g_BAUD) - 1);
	signal r_cycles : natural range 0 to CYCLES_PER_BIT := 0;
	signal r_index : natural range 0 to (g_BITS - 1) := 0;
begin

	p_UART_TX : process(i_clk) begin
		if rising_edge(i_clk) then
			case r_tx_sm is
				when s_IDLE =>
					o_tx <= '1'; -- Constantly write to HIGH.
					o_tx_sending <= '0';
					o_tx_done <= '0';
					if i_tx_send = '1' and i_tx_valid = '1' then
						r_cycles <= 0;
						o_tx_sending <= '1';
						r_tx_sm <= s_START;
					end if;
				when s_START =>
					o_tx <= '0'; -- Start bit is LOW.
					if r_cycles = CYCLES_PER_BIT then
						r_cycles <= 0;
						r_tx_sm <= s_WRITE;
					else r_cycles <= r_cycles + 1;
					end if;
				when s_WRITE =>
					o_tx <= i_tx_data(r_index);
					if r_cycles = CYCLES_PER_BIT then
						r_cycles <= 0;
						if r_index = g_BITS - 1 then
							r_index <= 0;
							r_tx_sm <= s_STOP;
						else r_index <= r_index + 1;
						end if;
					else r_cycles <= r_cycles + 1;
					end if;
				when s_STOP =>
					o_tx <= '1';
					if r_cycles = CYCLES_PER_BIT then
						r_cycles <= 0;
						o_tx_done <= '1'; -- Will be high for one clock pulse.
						r_tx_sm <= s_IDLE;
					else r_cycles <= r_cycles + 1;
					end if;
			end case;
		end if;
	end process p_UART_TX;
	
	-- Generates/Assignments:

	gen_flop_send : if g_FLOP_SEND_INPUT generate
		signal r_tx_send_stab : std_logic := '0';
		begin
			process(i_clk) begin
				r_tx_send <= r_tx_send_stab; r_tx_send_stab <= i_tx_send;
			end process;
	end generate gen_flop_send;
	
	gen_no_flop_send : if not g_FLOP_SEND_INPUT generate
		begin
			process(i_clk) begin
				r_tx_send <= i_tx_send;
			end process;
	end generate gen_no_flop_send;
	
	gen_flop_valid : if g_FLOP_VALID_INPUT generate
		signal r_tx_valid_stab : std_logic := '0';
		begin
			process(i_clk) begin
				r_tx_valid <= r_tx_valid_stab; r_tx_valid_stab <= i_tx_valid;
			end process;
	end generate gen_flop_valid;
	
	gen_no_flop_valid : if not g_FLOP_VALID_INPUT generate
		begin
			process(i_clk) begin
				r_tx_valid <= i_tx_valid;
			end process;
	end generate gen_no_flop_valid;

end rtl;
