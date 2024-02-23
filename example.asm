    .data                   # Data segment
prompt: .asciiz "Enter an integer: "
result: .asciiz "The sum is: "

    .text                   # Text segment (main code)

main:
    li $v0, 4               # System call for print_str
    la $a0, prompt          # Load the address of the prompt string
    syscall                 # Make the system call

    li $v0, 5               # System call for read_int
    syscall                 # Read an integer, and store it in $v0

    move $s0, $v0           # Store $v0 in $s0

    li $v0, 4               # System call for print_str
    la $a0, prompt          # Load the address of the prompt string
    syscall                 # Make the system call

    li $v0, 5               # System call for read_int
    syscall                 # Read another integer, and store it in $v0

    add $s0, $s0, $v0       # Add $s0 and $v0, result in $s0

    li $v0, 4               # System call for print_str
    la $a0, result          # Load the address of the result string
    syscall                 # Make the system call

    move $a0, $s0           # Move the sum to $a0 for printing
    li $v0, 1               # System call for print_int
    syscall                 # Make the system call

    li $v0, 10              # System call for exit
    syscall                 # Make the system call
