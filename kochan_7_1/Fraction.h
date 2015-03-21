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
-(double) ConvertToNum;
-(void) setTo: (int) n over: (int) d;
-(void) set: (int) n : (int) d;
@end
