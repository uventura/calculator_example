TARGET=calculator
BIN_DIR=bin

all: $(TARGET)
	@echo "Construindo o projeto de calculadora..."

$(TARGET): main.c lib/calculator.c
	mkdir -p $(BIN_DIR)
	gcc $^ -o $(BIN_DIR)/$@ -std=c99 -W -Wall -ansi -pedantic

clean:
	rm -rf $(TARGET) *.o $(BIN_DIR)