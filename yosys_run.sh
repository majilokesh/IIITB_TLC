# read design

read_verilog iiitb_tlc.v

# generic synthesis
synth -top iiitb_tlc

# mapping to mycells.lib
dfflibmap -liberty /home/lokesh/iiitb_tlc/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty /home/lokesh/iiitb_tlc/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
flatten
# write synthesized design
write_verilog iiitb_tlc_synth.v
