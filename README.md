# RISC-V-Processor
## This is a single cycle RISC-V Processor in VHDL with ISA I32  
### DeepWiki:  
https://deepwiki.com/mohamednaji7/RISC-V-Processor  
### RV32I Base Instruction Set :  
    R-Type  
    I-Type  
    S-Type  
    U-Type  
    J-Type  
    MISSED: B-Type  
    NOP as if invalid code  
### Specifications :  
    1 core  
    ~1 GHz  
    MISS to BrALU   
    Memory : SYN_MEM  with 1 KB size  
           : does not support out of band access  
           : word is 32bit wide  
           : Access by word  
### Further Versions :  
    Adding the BrALU and support the B-Type Instructions  
    Piplining the processor with Hazards Solutions  
    SRAM/DRAM as cache and Handling cache Misses 
### Addtionl Functionality
    -function to read machine code from txt file and fill the memory with the bits
    -also one for the data memory
    -some .txt files contain the 0's and 1's
