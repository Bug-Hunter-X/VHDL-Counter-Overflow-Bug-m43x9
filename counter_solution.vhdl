```vhdl
entity counter is
  Port ( clk : in  STD_LOGIC;
         reset : in  STD_LOGIC;
         count : out  UNSIGNED(3 downto 0));
end entity;

architecture behavioral of counter is
  signal internal_count : UNSIGNED(3 downto 0) := (others => '0');
begin
  process (clk, reset)
  begin
    if reset = '1' then
      internal_count <= (others => '0');
    elsif rising_edge(clk) then
      if internal_count = 15 then
        internal_count <= internal_count; -- Stays at 15
      else
        internal_count <= internal_count + 1;
      end if;
    end if;
  end process;
  count <= internal_count;
end architecture;
```