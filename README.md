# Chipyard-Verilator-Using
This repository contain the Chipyard usage to simulate the C code by using the Verilator simulator.





## riscv-tools
In the following, you can find the command on how to use the riscv -tools using in Chipyard.
### Riscv Compiler
To use Chipyard simulators, first, need to compile your code, by using the RISC-V compiler.
For example, to compile our C file code [simple.c](https://github.com/SorayaM123/Chipyard-Verilator-Using/blob/main/simple.c)
and generate an object file[simple.o](https://github.com/SorayaM123/Chipyard-Verilator-Using/blob/main/simple.o),  we need the below command:
   

    $ riscv64-unknown-elf-gcc  -O3 -fno-common -fno-builtin-printf -specs=htif_nano.specs -c simple.c -o simple.o


After the source code is compiled into an object file, this command creates an executable binary [simple.riscv](https://github.com/SorayaM123/Chipyard-Verilator-Using/blob/main/simple.riscv)

  $ riscv64-unknown-elf-gcc -static -specs=htif_nano.specs simple.o -o simple.riscv


### Riscv Assembler


There is also an opportunity to have an [assembly](https://github.com/SorayaM123/Chipyard-Verilator-Using/blob/main/simple.asm) code of our C code to understand what we want to verify and what we expect after running the code in the RISC-V processor.
Generate assembly with comments:


    $ riscv64-unknown-elf-gcc  -O3 -fno-common -fno-builtin-printf -specs=htif_nano.specs -S simple.c -o simple.asm

Generate [assembly](https://github.com/SorayaM123/Chipyard-Verilator-Using/blob/main/simple-dis.asm) from the compiled executable:

    $ riscv64-unknown-linux-gnu-objdump -d simple.riscv > simple-dis.asm


This assembly code is more simple than the generated assembly by the above command, and it is easier to search and verify the assembly code of the related C code. 


# Verilator Simulator

## Print Output

Generating a sim trace [simple.out](https://github.com/SorayaM123/Chipyard-Verilator-Using/blob/main/simple.out) from the /sims/verilator directory:
    $ make hex-run-binary BINARY=<path-to-binary>/simple.riscv


## Waveforms
To extract [waveforms](https://github.com/SorayaM123/Chipyard-Verilator-Using/blob/main/simple.vcd) file (simple.vcd) from the simulation, you can use the below command:
    $ make run-binary-debug BINARY=<path-to-binary>/simple.riscv

This command will generate a vcd file, then you can use open-source vcd-capable waveform viewer [GTKWave](https://gtkwave.sourceforge.net/)