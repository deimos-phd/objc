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
