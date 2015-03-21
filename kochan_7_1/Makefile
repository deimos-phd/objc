# objc

TARGET=program_7_1

$(TARGET): $(TARGET).m Fraction.m
	gcc $^ `gnustep-config --objc-flags` -lgnustep-base -lobjc -o $(TARGET)
