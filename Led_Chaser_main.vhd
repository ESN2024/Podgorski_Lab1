library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


Entity Led_Chaser_main is port( 

	pio_bouton_poussoir : in  std_logic;
	pio_out : out std_logic_vector(7 downto 0);
	clk  : in std_logic;
	reset : in std_logic );
	
End entity Led_Chaser_main;


architecture arch of Led_Chaser_main is
	
	component Led_chaser is
	  port (
			clk_clk                    : in  std_logic                    := 'X'; -- clk
			pio_bouton_poussoir_export : in  std_logic                    := 'X'; -- export
			pio_out_export             : out std_logic_vector(7 downto 0);        -- export
			reset_reset_n              : in  std_logic                    := 'X'  -- reset_n
	  );
	end component Led_chaser;

	begin

		u0 : component Led_chaser
		  port map (
				clk_clk                    => clk,                    --                 clk.clk
				pio_bouton_poussoir_export => pio_bouton_poussoir, -- pio_bouton_poussoir.export
				pio_out_export             => pio_out,             --             pio_out.export
				reset_reset_n              => reset               --               reset.reset_n
		  );

		  
end arch;





