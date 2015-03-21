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

@end
