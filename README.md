# iiitb_tlc - Traffic Light Controller
# INTRODUCTION
In this project, traffic light controller on a four-way road using is proposed. A sensor on the farm way is to detect if there are any vehicles and change the traffic light to allow the vehicles to cross the highway. Otherwise, highway light is always green since it has higher priority than the farm way.

# WORKING
  The circuit has three input signals (C, clk, rst_n) and two output signals (light_farm, light_highway). Input signal ‘C’ refers to the sensor on the farm way to detect if there are any vehicles on highway. If sensor detects any vehicle on highway (i.e., C = 1), then the traffic light on farm way i.e., the output ‘light_farm’ turns red and the traffic light on highway i.e., the output ‘light_highway’ turns green. When there are no vehicles on highway (i.e., C = 0), light_farm turns green and light_highway turns red. But highway has higher priority than the farm way. Both the output signals are of 3-bit size.
  
  In output signal, "001" represents Green light, "010" represents Yellow light and “100” represents Red light. ‘Clk’ is the clock signal and ‘rst_n’ is the active low reset signal. The circuit is designed to work at the positive edge of the clock signal, while at the negative edge of the rst_n the output signal is reset to default state i.e., Red light.
  
There are four cases in this controller circuit:
1. Green on highway and red on farm way
2. Yellow on highway and red on farm way
3. Red on highway and green on farm way
4. Red on highway and yellow on farm way

# About iverilog and GTKWave
Icarus Verilog is a Verilog simulation and synthesis tool. It operates as a compiler, compiling source code written in Verilog (IEEE-1364) into some target format. For batch simulation, the compiler can generate an intermediate form called vvp assembly. This intermediate form is executed by the ``vvp'' command. For synthesis, the compiler generates netlists in the desired format. The compiler proper is intended to parse and elaborate design descriptions written to the IEEE standard IEEE Std 1364-2005.

GTKWave is a VCD waveform viewer based on the GTK library. This viewer support VCD and LXT formats for signal dumps. Waveform dumps are written by the Icarus Verilog runtime program vvp. The user uses $dumpfile and $dumpvars system tasks to enable waveform dumping, then the vvp runtime takes care of the rest. The output is written into the file specified by the $dumpfile system task. If the $dumpfile call is absent, the compiler will choose the file name dump.vcd or dump.lxt, depending on runtime flags.

# BLOCK DIAGRAM
 ![image](https://user-images.githubusercontent.com/72696170/181302041-489c49ad-2ba5-4083-ac92-8a216c5a46e1.png)
 
The block diagram of the traffic light controller is shown in the figure above.

# PRE-LAYOUT SIMULATION
 ![image](https://user-images.githubusercontent.com/72696170/181349472-ddfcb9cd-329a-4820-9fbc-c363cdacd6e4.png)

# CONTRIBUTORS

# ACKNOWLEDGEMENT

# CONTACTS
