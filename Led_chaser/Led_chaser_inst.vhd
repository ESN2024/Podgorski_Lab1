	component Led_chaser is
		port (
			clk_clk                    : in  std_logic                    := 'X';             -- clk
			pio_bouton_poussoir_export : in  std_logic                    := 'X';             -- export
			pio_out_export             : out std_logic_vector(7 downto 0);                    -- export
			pio_switchs_export         : in  std_logic_vector(7 downto 0) := (others => 'X'); -- export
			reset_reset_n              : in  std_logic                    := 'X'              -- reset_n
		);
	end component Led_chaser;

	u0 : component Led_chaser
		port map (
			clk_clk                    => CONNECTED_TO_clk_clk,                    --                 clk.clk
			pio_bouton_poussoir_export => CONNECTED_TO_pio_bouton_poussoir_export, -- pio_bouton_poussoir.export
			pio_out_export             => CONNECTED_TO_pio_out_export,             --             pio_out.export
			pio_switchs_export         => CONNECTED_TO_pio_switchs_export,         --         pio_switchs.export
			reset_reset_n              => CONNECTED_TO_reset_reset_n               --               reset.reset_n
		);

