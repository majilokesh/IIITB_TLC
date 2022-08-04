# read design

read_verilog iiitb_tlc.v

# generic synthesis
synth -top iiitb_tlc

# mapping to mycells.lib
dfflibmap -liberty /home/lokesh/iiitb_tlc/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
proc 
opt
abc -liberty /home/lokesh/iiitb_tlc/lib/sky130_fd_sc_hd__tt_025C_1v80.lib -script +strash;scorr;ifraig;retime,{D};strash;dch,-f;map,-M,1,{D}
proc
flatten
clean

# write synthesized design
write_verilog -noattr iiitb_tlc_synth.v
stat
