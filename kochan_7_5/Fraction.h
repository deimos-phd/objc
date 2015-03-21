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
// -(void) add: (Fraction *) f;
-(Fraction *) add: (Fraction *) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(void) reduce;
-(int) getSign;
@end
