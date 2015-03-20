#import <Foundation/Foundation.h>

@interface Calculator: NSObject
{
	double accumulator;
}

-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

-(void) ChangeSign;
-(void) reciprocal;
-(void) xSquared;
@end

@implementation Calculator
-(void) setAccumulator: (double) value
{
	accumulator = value;
}

-(void) clear
{
	accumulator = 0;
}

-(double) accumulator
{
	return accumulator;
}

-(void) add: (double) value
{
	accumulator += value;
}

-(void) subtract: (double) value
{
	accumulator -= value;
}

-(void) multiply: (double) value
{
	accumulator *= value;
}

-(void) divide: (double) value
{
	accumulator /= value;
}

-(void) ChangeSign
{
	accumulator = -accumulator;
}

-(void) reciprocal
{
	accumulator = 1 / accumulator;
}

-(void) xSquared
{
	accumulator *= accumulator;
}
@end

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	Calculator *calc = [[Calculator alloc] init];
	[calc clear];
	[calc setAccumulator: 100.0];
	[calc add: 200.];
	[calc divide: 15.0];
	[calc subtract: 10.0];
	[calc multiply: 5];

	NSLog(@"The result is %g", [calc accumulator]);

	[calc ChangeSign];
	NSLog(@"The ChangeSign result is %g", [calc accumulator]);

	[calc reciprocal];
	NSLog(@"The reciprocal result is %g", [calc accumulator]);

	[calc xSquared];
	NSLog(@"The xSquared result is %g", [calc accumulator]);

	[calc release];

	[pool drain];
	return 0;
}
