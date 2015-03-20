#import <Foundation/Foundation.h>

@interface Calculator: NSObject
{
	double accumulator;
	double memory;
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

-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd;
-(double) memorySubtract;
-(double) memory;
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

-(double) memoryClear
{
	memory = 0;
	return accumulator;
}

-(double) memoryStore
{
	memory = accumulator;
	return accumulator;
}

-(double) memoryRecall
{
	accumulator = memory;
	return accumulator;
}

-(double) memoryAdd
{
	memory += accumulator;
	return accumulator;
}

-(double) memorySubtract
{
	memory -= accumulator;
	return accumulator;
}

-(double) memory
{
	return memory;
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

	[calc memoryStore];
	[calc memoryAdd];
	[calc memorySubtract];
	[calc memoryRecall];

	NSLog(@"The result is %g (%g)", [calc accumulator], [calc memory]);

	[calc memoryClear];
	NSLog(@"The result is %g (%g)", [calc accumulator], [calc memory]);

	[calc release];

	[pool drain];
	return 0;
}
