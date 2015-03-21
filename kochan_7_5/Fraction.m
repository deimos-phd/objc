#import <Foundation/Foundation.h>
#import "Fraction.h"

// --- @implementation section ---

@implementation Fraction

@synthesize numerator;
@synthesize denominator;

-(void) print
{
	NSLog(@"(%i) %i/%i", [self getSign], numerator, denominator);
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

-(Fraction *) subtract: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	int resNum, resDenom;

	resNum = numerator * f.denominator - denominator * f.numerator;
	resDenom = denominator * f.denominator;

	[result setTo: resNum over: resDenom];
	[result reduce];

	return result;
}

-(Fraction *) multiply: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	int resNum, resDenom;

	resNum = numerator * f.numerator;
	resDenom = denominator * f.denominator;

	[result setTo: resNum over: resDenom];
	[result reduce];

	return result;
}

-(Fraction *) divide: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	int resNum, resDenom;

	resNum = numerator * f.denominator;
	resDenom = denominator * f.numerator;

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

-(int) getSign
{
	double temp = [self ConvertToNum];
	if(temp < 0)
		return -1;
	return 1;
}

@end
