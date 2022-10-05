###############################################################################
# Created by write_sdc
# Mon Sep  5 09:48:47 2022
###############################################################################
current_design iiitb_tlc
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 24.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {C}]
set_input_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {rst_n}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {light_farm[0]}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {light_farm[1]}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {light_farm[2]}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {light_highway[0]}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {light_highway[1]}]
set_output_delay 4.8000 -clock [get_clocks {clk}] -add_delay [get_ports {light_highway[2]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {light_farm[2]}]
set_load -pin_load 0.0334 [get_ports {light_farm[1]}]
set_load -pin_load 0.0334 [get_ports {light_farm[0]}]
set_load -pin_load 0.0334 [get_ports {light_highway[2]}]
set_load -pin_load 0.0334 [get_ports {light_highway[1]}]
set_load -pin_load 0.0334 [get_ports {light_highway[0]}]
set_driving_cell -lib_cell sky130_vsdinv -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {C}]
set_driving_cell -lib_cell sky130_vsdinv -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_vsdinv -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rst_n}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
