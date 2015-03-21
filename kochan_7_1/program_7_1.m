#import <Foundation/Foundation.h>
#import "Fraction.h"

// --- program section ---

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	Fraction *myFraction = [[Fraction alloc] init];

	// set fraction to 1/3
	[myFraction setNumerator: 1];
	[myFraction setDenominator: 3];
	[myFraction print];
	NSLog(@"The value of myFraction is: %i/%i\n", [myFraction numerator], [myFraction denominator]);
	[myFraction release];

	[pool drain];

	return 0;
}
