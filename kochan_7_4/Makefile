# objc

TARGET=program_7_4

all: clean $(TARGET)

$(TARGET): $(TARGET).m Fraction.m
	gcc $^ `gnustep-config --objc-flags` -lgnustep-base -lobjc -o $(TARGET)

clean:
	rm -f $(TARGET)
	rm -f *.d
