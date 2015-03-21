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

@end
