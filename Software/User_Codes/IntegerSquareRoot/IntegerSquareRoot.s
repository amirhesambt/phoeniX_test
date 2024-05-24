.globl _start

_start:
    li a0, 36         # Load the number whose square root needs to be calculated into register a0
    li a1, 0          # Initialize the result in register a1 to 0
    li a2, 1          # Initialize the increment value in register a2 to 1

loop:
    sub a0, a0, a2    # Subtract the increment value from the input number
    blt a0, zero, end # If the result is negative, exit the loop

    addi a1, a1, 1    # Increment the result by 1
    addi a2, a2, 2    # Increment the increment value by 2
    j loop            # Jump back to the beginning of the loop

end:
   
    li a7, 10         # Load the exit syscall number into register a7
    ebreak             # Make a syscall to exit the program