CFLAGS=-march=rv64gcv -mabi=lp64d -mno-relax
CC=riscv64-unknown-elf-gcc
SRC=main.c RVVaddition.s
TARGET=RVVaddition

$(TARGET):$(SRC)
	$(CC) -v $(CFLAGS) -o $(TARGET) $(SRC)

run:
	$(RISCV)/riscv-isa-sim/build/spike --isa=RV64IMACV $(RISCV)/riscv-pk/build/pk ./$(TARGET)

clean:
	rm -f $(TARGET)