# learn-mips-mars
Learn MIPS and MIPS Assembler and Runtime Simulator

## Basic Commands

### .data and .text
`.data` and `.text` are segments where data and code reside, respectively  

### li 
Loads an immediate value into a register  

### la 
Loads the address of a string into a register  

### move
- Used to copy value from one register to another
- Actually uses `add`

### add 
Adds the contents of second and third registers and stores the result in the first register 

## syscall 
- Used to make system calls for input/output operations
- Result registers as specified  

Source: https://courses.missouristate.edu/kenvollmar/mars/help/syscallhelp.html  

### Steps
1. Load service number in register $v0
ex. service 1 is print integer (li  $v0, 1)
2. Load argument values, if any, in $a0, $a1, $a2, or $f12 as specified  
ex. load desired value into argument register $a0 (add $a0, $t0, $zero)
3. Issue the SYSCALL instruction  
4. Retrieve return values, if any, from result registers as specified  

### Service Numbers
| Service  | Number/Code in $v0 | Arguments | Result |
| ------------- | ------------- | ------------- | ------------- |
| print int  | 1  | $a0  |   |
| print string  | 4  | $a0 = address of null-terminated string to print  |  |
| exit  | 10 | $a0  |   |
