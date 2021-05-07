-- Claude Garrett V, 5/6/2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity arithmetic_logic_unit is
	generic(
		g_DEBUG_OUTPUTS : boolean := false
	);
	port(
		i_clk, i_in_enable, i_out_enable, i_operand, i_sign, i_reset : in std_logic;
		i_op : in std_logic_vector(3 downto 0);
		io_bus : inout std_logic_vector(31 downto 0);
		
		-- Optional Debug Outputs:
		o_a, o_b : out std_logic_vector(31 downto 0);
		o_a_sign, o_b_sign : out std_logic;
		o_result : out std_logic_vector(63 downto 0)
	);
end arithmetic_logic_unit;

architecture RTL of arithmetic_logic_unit is
	signal r_a, r_b : std_logic_vector(31 downto 0) := (others => '0');
	signal r_a_sign, r_b_sign : std_logic := '0';
	signal r_result : std_logic_vector(63 downto 0);
	
begin
	
	execute : process(i_clk) begin
		if rising_edge(i_clk) then
			case i_op is
				when X"0" => -- Addition.
					r_result <= std_logic_vector(unsigned(r_a) + unsigned(r_b));
				when X"1" => -- Subtraction.
					r_result <= std_logic_vector(unsigned(r_a) - unsigned(r_b));
				when X"2" => -- OR.
					r_result <= r_a or r_b;
				when X"3" => -- AND.
					r_result <= r_a and r_b;
				when X"4" => -- XOR.
					r_result <= r_a xor r_b;
				when X"5" => -- Shift Left.
					r_result <= std_logic_vector(shift_left(unsigned(r_a), to_integer(unsigned(r_b))));
				when X"6" => -- Shift Right Logical.
					r_result <= std_logic_vector(shift_right(unsigned(r_a), to_integer(unsigned(r_b))));
				when X"7" => -- Shift Right Arithmetic.
					r_result <= std_logic_vector(shift_right(signed(r_a), to_integer(unsigned(r_b))));
				when X"8" => -- Set Less Than Signed/Unsigned.
					if r_a_sign = '1' or r_b_sign = '1' then -- Use signed if any of the operands are signed.
						if signed(r_a) < signed(r_b) then r_result <= X"1";
						else r_result <= X"0";
						end if;
					else -- Unsigned.
						if unsigned(r_a) < unsigned(r_b) then r_result <= X"1";
						else r_result <= X"0";
						end if;
					end if;
				when X"9" => -- Multiply Low.
					
				when X"A" => -- Multiply High/Unsigned/SU.
				when X"B" => -- Divide.
				when X"C" => -- Modulus/Remainder.
				when X"D" => -- Reserved.
				when X"E" => -- Reserved.
				when X"F" => -- Reserved.
			end case;
		end if;
	end process execute;
	
	-- Bus Management:
	
	io_bus <= r_result(31 downto 0) when (i_in_enable = '1' and i_op /= X"A") else
			  r_result(63 downto 32) when (i_in_enable = '1' and i_op = X"A") else
			  (others => 'Z');
	
	read_from_bus : process(i_clk) begin
		if falling_edge(i_clk) then
			if i_in_enable = '1' then
				if i_operand = '0' then
					r_a <= io_bus;
					r_a_sign <= i_sign;
				else
					r_b <= io_bus;
					r_b_sign <= i_sign;
				end if;
			end if;
			
			if i_reset = '1' then
				r_a <= X"00000000"; r_b <= X"00000000";
				r_a_sign <= '0'; r_b_sign <= '0';
			end if;
		end if;
	end process read_from_bus;
	-- End Bus Management.
	
	-- Debug Generate:
	
	gen_debug : if G_DEBUG_OUTPUTS generate
		begin
			o_a <= r_a; o_b <= r_b;
			o_a_sign <= r_a_sign; o_b_sign <= r_b_sign;
			o_result <= r_result;
	end generate gen_debug;
	-- End Debug Generate.

end RTL;
