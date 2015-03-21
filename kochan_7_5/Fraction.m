#import <Foundation/Foundation.h>
#import "Fraction.h"

// --- @implementation section ---

@implementation Fraction

@synthesize numerator;
@synthesize denominator;

-(void) print
{
	NSLog(@"%i/%i", numerator, denominator);
}

-(double) ConvertToNum
{
	if(denominator != 0)
		return (double)numerator / denominator;
	else
		return 1.0;
}

-(void) setTo: (int) n over: (int) d
{
	numerator = n;
	denominator = d;
}

-(void) set: (int) n : (int) d
{
	numerator = n;
	denominator = d;
}

// -(void) add: (Fraction *) f
// {
// 	numerator = numerator * f.denominator + denominator * f.numerator;
// 	denominator *= f.denominator;

// 	[self reduce];
// }

-(Fraction *) add: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	int resNum, resDenom;

	resNum = numerator * f.denominator + denominator * f.numerator;
	resDenom = denominator * f.denominator;

	[result setTo: resNum over: resDenom];
	[result reduce];

	return result;
}

-(void) reduce
{
	int u = numerator;
	int v = denominator;
	int temp;

	while(v != 0) {
		temp = u % v;
		u = v;
		v = temp;
	}

	numerator /= u;
	denominator /= u;
}

@end