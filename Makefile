NASM      = nasm

NASMFLAGS = -f elf64 -g -F dwarf
LDFLAGS   = 

SRC_DIR   = src
BUILD_DIR = build
TARGET    = program

ASM_FILES := $(shell find $(SRC_DIR) -type f -name "*.asm")
OBJ_FILES := $(patsubst $(SRC_DIR)/%.asm,$(BUILD_DIR)/%.o,$(ASM_FILES))

WRAPPER_OBJ := $(BUILD_DIR)/debug_wrapper.o

all: $(BUILD_DIR)/$(TARGET)

$(BUILD_DIR)/libcommands.a: $(OBJ_FILES)
	ar rcs $@ $^

$(BUILD_DIR)/$(TARGET): $(WRAPPER_OBJ) $(BUILD_DIR)/libcommands.a
	gcc $^ -g -o $@ $(LDFLAGS)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.asm
	@mkdir -p $(dir $@)
	$(NASM) $(NASMFLAGS) $< -o $@

$(WRAPPER_OBJ): $(SRC_DIR)/debug_wrapper.c
	@mkdir -p $(BUILD_DIR)
	gcc -g -c $< -o $@

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean