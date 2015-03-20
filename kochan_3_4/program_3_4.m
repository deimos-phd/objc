#import <Foundation/Foundation.h>

// --- @interface section ---

@interface Fraction: NSObject
{
	int numerator;
	int denominator;
}

-(void) print;
-(void) SetNumerator: (int) n;
-(void) SetDenominator: (int) d;
-(int) numerator;
-(int) denominator;
@end

// --- @implementation section ---

@implementation Fraction
-(void) print
{
	NSLog(@"%i/%i", numerator, denominator);
}

-(void) SetNumerator: (int) n
{
	numerator = n;
}

-(void) SetDenominator: (int) d
{
	denominator = d;
}

-(int) numerator
{
	return numerator;
}

-(int) denominator
{
	return denominator;
}
@end

// --- program section ---

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	Fraction *myFraction = [[Fraction alloc] init];

	// set fraction to 1/3
	[myFraction SetNumerator: 1];
	[myFraction SetDenominator: 3];
	[myFraction print];
	NSLog(@"The value of myFraction is: %i/%i\n", [myFraction numerator], [myFraction denominator]);
	[myFraction release];

	[pool drain];

	return 0;
}
