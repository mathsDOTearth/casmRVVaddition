# RISC-V assembly function to add two 4 element vectors
# and return the result to the calling C program

.global vec_add

.section .text
vec_add:
    # Set vector length to 4 elements of 32 bits each
    li t0, 4                  # Number of elements
    vsetvli t0, t0, e32, m2   # Set vector length to 4 elements of 
                              # 32-bit each, with 2 registers per element
    
    # Load vectors from memory
    vle32.v v0, (a0)          # Load vec1 into v0
    vle32.v v8, (a1)          # Load vec2 into v8
    
    # Perform vector addition
    vadd.vv v0, v0, v8        # v0 = v0 + v8
    
    # Store result in memory
    vse32.v v0, (a2)          # Store v0 into result
    
    ret

