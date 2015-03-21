#import <Foundation/Foundation.h>

// --- @interface section ---

@interface Fraction: NSObject
{
	int numerator;
	int denominator;
}

@property int numerator;
@property int denominator;

-(void) print;
@end
