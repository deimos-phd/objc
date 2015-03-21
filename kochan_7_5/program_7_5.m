#import <Foundation/Foundation.h>
#import "Fraction.h"

// --- program section ---

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	Fraction *aFraction = [[Fraction alloc] init];
	Fraction *bFraction = [[Fraction alloc] init];
	Fraction *rFraction;

	[aFraction setTo: 1 over: 4];
	[bFraction setTo: 1 over: 2];

	[aFraction print];
	NSLog(@"+");
	[bFraction print];
	NSLog(@"=");

	rFraction = [aFraction add: bFraction];
	[rFraction print];

	[aFraction release];
	[bFraction release];
	[rFraction release];

	[pool drain];

	return 0;
}
