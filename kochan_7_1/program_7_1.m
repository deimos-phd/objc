#import <Foundation/Foundation.h>
#import "Fraction.h"

// --- program section ---

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	Fraction *myFraction = [[Fraction alloc] init];

	// set fraction to 1/3
	myFraction.numerator = 1;
	myFraction.denominator = 3;
	myFraction.print;
	NSLog(@"The value of myFraction is: %i/%i\n", myFraction.numerator, myFraction.denominator);
	NSLog(@"converted number is %g", myFraction.ConvertToNum);

	[myFraction setTo: 2 over: 3];
	NSLog(@"The value of myFraction is: %i/%i\n", myFraction.numerator, myFraction.denominator);
	NSLog(@"converted number is %g", myFraction.ConvertToNum);

	[myFraction set: 2 : 4];
	NSLog(@"The value of myFraction is: %i/%i\n", myFraction.numerator, myFraction.denominator);
	NSLog(@"converted number is %g", myFraction.ConvertToNum);

	Fraction *bFraction = [[Fraction alloc] init];

	[bFraction set: 3 : 4];

	[myFraction add: bFraction];

	NSLog(@"The value of myFraction is: %i/%i\n", myFraction.numerator, myFraction.denominator);
	NSLog(@"converted number is %g", myFraction.ConvertToNum);

	[bFraction release];
	[myFraction release];

	[pool drain];

	return 0;
}
