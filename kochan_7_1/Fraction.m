#import <Foundation/Foundation.h>
#import "Fraction.h"

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
