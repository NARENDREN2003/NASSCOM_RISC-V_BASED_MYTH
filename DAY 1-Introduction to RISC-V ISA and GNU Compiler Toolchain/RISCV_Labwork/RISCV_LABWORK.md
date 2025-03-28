# **RISCV LABWORK**
## STEPS TO IMPLEMENT LABWORK
### Create a C program file in Linux using Leafpad
  - Use the below commands:
  ```
    cd
    leafpad sum1ton.c 
  ```
  - Type the C code in the leafpad (Refer [sum1ton.c](https://github.com/NARENDREN2003/NASSCOM_RISC-V_BASED_MYTH/blob/5dd8542e7587e93bc055e1e8800229fb4e8ed859/DAY%201-Introduction%20to%20RISC-V%20ISA%20and%20GNU%20Compiler%20Toolchain/RISCV_Labwork/sum1ton.c))
  - Then return to a new terminal
### Execution of Code
  - Use the below command in terminal:
  ```
    cat sum1ton.c
  ```
  - The C program written will appear in the terminal.
  - Then use the commands:
  ```
    riscv64-unknown-elf-gcc -O1 -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
    ls -ltr sum1ton.o
  ```
  - Go to another Tab terminal to see the assembly language code of the c program written.Type the below command:
  ```
    risv64-unknown-elf-objdump -d sum1ton.o
  ```
  - The above command lists bunch the assembly language code.We need to type the below command for   
    
    
