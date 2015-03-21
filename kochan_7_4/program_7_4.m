#import <Foundation/Foundation.h>
#import "Fraction.h"

// --- program section ---

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	Fraction *aFraction = [[Fraction alloc] init];
	Fraction *bFraction = [[Fraction alloc] init];

	[aFraction setTo: 1 over: 4];
	[bFraction setTo: 1 over: 2];

	[aFraction print];
	NSLog(@"+");
	[bFraction print];
	NSLog(@"=");

	[aFraction add: bFraction];
	[aFraction print];

	[aFraction reduce];
	[aFraction print];

	[aFraction release];
	[bFraction release];

	[pool drain];

	return 0;
}
