set_global_assignment -entity "Led_chaser" -library "lib_Led_chaser" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "Led_chaser" -library "lib_Led_chaser" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "Led_chaser" -library "lib_Led_chaser" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_Led_chaser" -name SPD_FILE [file join $::quartus(sip_path) "../Led_chaser.spd"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "../Led_chaser.qsys"]

set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "Led_chaser.vhd"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_controller.v"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_synchronizer.v"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_controller.sdc"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_irq_mapper.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0.v"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0_avalon_st_adapter.vhd"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0_rsp_mux_001.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_merlin_arbitrator.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0_rsp_mux.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0_rsp_demux.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0_cmd_mux_001.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0_cmd_mux.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0_cmd_demux_001.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0_cmd_demux.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0_router_003.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0_router_002.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0_router_001.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_mm_interconnect_0_router.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_avalon_sc_fifo.v"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_merlin_slave_agent.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_merlin_burst_uncompressor.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_merlin_master_agent.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_merlin_slave_translator.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_merlin_master_translator.sv"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_onchip_memory2_0.hex"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_onchip_memory2_0.vhd"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0.v"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu.sdc"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu.v"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_debug_slave_sysclk.v"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_debug_slave_tck.v"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_debug_slave_wrapper.v"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_nios2_waves.do"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_ociram_default_contents.dat"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_ociram_default_contents.hex"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_ociram_default_contents.mif"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_rf_ram_a.dat"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_rf_ram_a.hex"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_rf_ram_a.mif"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_rf_ram_b.dat"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_rf_ram_b.hex"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_rf_ram_b.mif"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_nios2_gen2_0_cpu_test_bench.v"]
set_global_assignment -library "lib_Led_chaser" -name MISC_FILE [file join $::quartus(sip_path) "submodules/Led_chaser_jtag_uart_0.vhd"]
