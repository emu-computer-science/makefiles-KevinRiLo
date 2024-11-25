CC = clang

OBJFILES = file1.o file2.o driver.o
TARGET = makefileAssignment
HEADER = headers.h

all: $(TARGET)

$(TARGET): $(OBJFILES)
	$(CC) -o $@ $^

%.o: %.c $(HEADER)
	$(CC) -c -o $@ $<

.PHONY: clean
clean:
	rm -f $(OBJFILES) $(TARGET) *~
