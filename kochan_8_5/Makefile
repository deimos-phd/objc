# objc

TARGET=program_8_5

all: clean $(TARGET)

$(TARGET): $(TARGET).m Rectangle.m XYPoint.m
	gcc $^ `gnustep-config --objc-flags` -lgnustep-base -lobjc -o $(TARGET)

clean:
	rm -f $(TARGET)
	rm -f *.d
