# iiitb_tlc - Traffic Light Controller
# INTRODUCTION
In this project, traffic light controller on a four-way road using a sensor is proposed. A sensor on the farm way is to detect if there are any vehicles and change the traffic light to allow the vehicles to cross the highway. Otherwise, highway light is always green since it has higher priority than the farm way.

# WORKING
  The circuit has three input signals (C, clk, rst_n) and two output signals (light_farm, light_highway). Input signal ‘C’ refers to the sensor on the farm way to detect if there are any vehicles on highway. If sensor detects any vehicle on highway (i.e., C = 1), then the traffic light on farm way i.e., the output ‘light_farm’ turns red and the traffic light on highway i.e., the output ‘light_highway’ turns green. When there are no vehicles on highway (i.e., C = 0), light_farm turns green and light_highway turns red. But highway has higher priority than the farm way. Both the output signals are of 3-bit size.
  
  In output signal, "001" represents Green light, "010" represents Yellow light and “100” represents Red light. ‘Clk’ is the clock signal and ‘rst_n’ is the active low reset signal. The circuit is designed to work at the positive edge of the clock signal, while at the negative edge of the rst_n the output signal is reset to default state i.e., Red light.
  
There are four cases in this controller circuit:
1. Green on highway and red on farm way
2. Yellow on highway and red on farm way
3. Red on highway and green on farm way
4. Red on highway and yellow on farm way

# iverilog and GTKWave
Icarus Verilog (iverilog) is a Verilog simulation and synthesis tool. It operates as a compiler, compiling source code written in Verilog (IEEE-1364) into some target format. For batch simulation, the compiler can generate an intermediate form called vvp assembly. This intermediate form is executed by the ``vvp'' command. For synthesis, the compiler generates netlists in the desired format. The compiler proper is intended to parse and elaborate design descriptions written to the IEEE standard IEEE Std 1364-2005.

GTKWave is a VCD waveform viewer based on the GTK library. This viewer support VCD and LXT formats for signal dumps. Waveform dumps are written by the Icarus Verilog runtime program vvp. The user uses $dumpfile and $dumpvars system tasks to enable waveform dumping, then the vvp runtime takes care of the rest. The output is written into the file specified by the $dumpfile system task. If the $dumpfile call is absent, the compiler will choose the file name dump.vcd or dump.lxt, depending on runtime flags.

**To install iverilog and GTKWave in Ubuntu, open your terminal and type the following commands**

```
$ sudo apt-get update
$ sudo apt get iverilog
$ sudo apt get install iverilog gtkwave
```

**To clone the Repository and download the Netlist files for Simulation, enter the following commands in your terminal**
```
$   sudo apt install -y git
$   git clone https://github.com/majilokesh/iiitb_tlc.git
$   cd iiitb_tlc
$   iverilog iiitb_tlc.v iiitb_tlc_tb.v
$   ./a.out
$   gtkwave tlc_out.vcd
```

# yosys – Yosys Open SYnthesis Suite
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.

Synthesis transforms the simple RTL design into a gate-level netlist with all the constraints as specified by the designer. In simple language, Synthesis is a process that converts the abstract form of design to a properly implemented chip in terms of logic gates.

Synthesis takes place in multiple steps:
  * Converting RTL into simple logic gates.
  * Mapping those gates to actual technology-dependent logic gates available in the technology libraries.
  * Optimizing the mapped netlist keeping the constraints set by the designer intact.

Yosys can be adapted to perform any synthesis job by combining the existing passes (algorithms) using synthesis scripts and adding additional passes as needed by extending the yosys C++ code base.

Yosys is free software licensed under the ISC license (a GPL compatible license that is similar in terms to the MIT license or the 2-clause BSD license).



# BLOCK DIAGRAM
 ![image](https://user-images.githubusercontent.com/72696170/181302041-489c49ad-2ba5-4083-ac92-8a216c5a46e1.png)
 
The block diagram of the traffic light controller is shown in the figure above.

# PRE-LAYOUT SIMULATION
 ![image](https://user-images.githubusercontent.com/72696170/181349472-ddfcb9cd-329a-4820-9fbc-c363cdacd6e4.png)

# AUTHOR
Lokesh Maji

# CONTRIBUTORS
* Kunal Ghosh
* Arsh Kedia
* Rohit Raj
* Siddhant Nayak

# ACKNOWLEDGEMENT
Kunal Ghosh, Director, VSD Corp. Pvt. Ltd.

# CONTACTS
* Lokesh Maji, M.Tech - VLSI, Batch: 2022-24, IIITB, majilokesh10@gmail.com
* Rohit Raj, M.Tech - VLSI, Batch: 2022-24, IIITB, 
* Siddhant Nayek, M.Tech - VLSI, Batch: 2022-24, IIITB, siddhantn72@gmail.com
* Arsh Kedia, M.Tech - VLSI, Batch: 2022-24, IIITB, 
* Kunal Ghosh, Diretor, VSD Corp. Pvt. Ltd., kunalghosh@gmail.com

# REFERENCES
  [1]   Verilog HDL: A Guide to Digital Design and Synthesis, Samir Palnitkar, Prentice Hall Professional, 2003

  [2]   https://www.fpga4student.com

  [3]   https://vlsicoding.blogspot.com

  [4]   S. V. Kishore, V. Sreeja, V. Gupta, V. Videesha, I. B. K. Raju and K. M. Rao, "FPGA based traffic light controller," 2017 International       Conference on Trends in Electronics and Informatics (ICEI), 2017, pp. 469-475, doi: 10.1109/ICOEI.2017.8300971.
