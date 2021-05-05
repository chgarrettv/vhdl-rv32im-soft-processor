-- Claude Garrett V, 4/29/2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity uart_rx is
	generic(
		g_BAUD : positive := 115200; -- 8x = 921600.
		g_CLK_FREQ : positive := 100000000; -- 1 MHz default. MUST BE 8x BAUD RATE.
		g_BITS : positive := 8 -- 1 byte default.
	);
	port(
		i_clk : in std_logic; -- Clock.
		i_rx : in std_logic; -- Input line.
		o_rx_data : out std_logic_vector((g_BITS - 1) downto 0) := (others => '0'); -- Holds the data.
		o_rx_valid : out std_logic := '0' -- Shows the output when the byte is valid.
	);
end uart_rx;

architecture rtl of uart_rx is
	type t_rx_sm is ( -- Enum for state machine.
		s_IDLE,
		s_CENTER,
		s_READ,
		s_STOP
	);
	signal r_rx_sm : t_rx_sm := s_IDLE;
	
	signal r_rx_in_stab : std_logic := '0';
	signal r_rx_in : std_logic := '0';
	
	constant CYCLES_PER_BIT : positive := ((g_CLK_FREQ / g_BAUD) - 1);
	signal r_cycles : natural range 0 to CYCLES_PER_BIT := 0; -- Should be 868 for 100MHz and 115200
	signal r_index : natural range 0 to (g_BITS - 1) := 0;
begin

	p_STABILIZE_INPUTS : process(i_clk) begin
		if rising_edge(i_clk) then
			r_rx_in <= r_rx_in_stab; r_rx_in_stab <= i_rx;
		end if;
	end process p_STABILIZE_INPUTS;
	
	p_UART_RX : process(i_clk) begin
		if rising_edge(i_clk) then
			case r_rx_sm is
				when s_IDLE =>
					o_rx_valid <= '0';
					r_cycles <= 0;
					if r_rx_in = '0' then -- Found start bit.
						r_rx_sm <= s_CENTER;
					end if;
					
				when s_CENTER =>
					if r_cycles = (CYCLES_PER_BIT / 2) then -- Middle found.
						if r_rx_in = '0' then
							o_rx_valid <= '0'; -- Only reset valid bit when you're going to change the data.
							r_cycles <= 0;
							r_rx_sm <= s_READ;
						else r_rx_sm <= s_IDLE; -- Missed/false start, return to idle.
						end if;
					else r_cycles <= r_cycles + 1; -- Keep counting.
					end if;
					
				when s_READ =>
					if r_cycles = CYCLES_PER_BIT then
						o_rx_data(r_index) <= r_rx_in; -- Smallest bit first.
						r_cycles <= 0;
						
						if r_index = g_BITS - 1 then -- Received all bits.
							r_index <= 0;
							r_rx_sm <= s_STOP;
						else r_index <= r_index + 1;
						end if;
					else r_cycles <= r_cycles + 1; -- Keep counting.
					end if;
					
				when s_STOP => -- Wait one clock cycle for data to settle before declaring it as valid. May be unnecessary.
					o_rx_valid <= '1';
					r_rx_sm <= s_IDLE;
			end case;
		end if;
	end  process p_UART_RX;

end rtl;
