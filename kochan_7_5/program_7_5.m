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

	NSLog(@"----------");
	[aFraction print];
	NSLog(@"+");
	[bFraction print];
	NSLog(@"=");
	rFraction = [aFraction add: bFraction];
	[rFraction print];
	[rFraction release];

	NSLog(@"----------");
	[aFraction print];
	NSLog(@"*");
	[bFraction print];
	NSLog(@"=");
	rFraction = [aFraction multiply: bFraction];
	[rFraction print];
	[rFraction release];

	NSLog(@"----------");
	[aFraction print];
	NSLog(@"/");
	[bFraction print];
	NSLog(@"=");
	rFraction = [aFraction divide: bFraction];
	[rFraction print];
	[rFraction release];

	NSLog(@"----------");
	[aFraction print];
	NSLog(@"-");
	[bFraction print];
	NSLog(@"=");
	rFraction = [aFraction subtract: bFraction];
	[rFraction print];
	[rFraction release];

	[aFraction release];
	[bFraction release];

	[pool drain];

	return 0;
}
