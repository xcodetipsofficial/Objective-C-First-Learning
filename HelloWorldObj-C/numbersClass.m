//
//  numbersClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-02-05.
//

#import <Foundation/Foundation.h>

@interface NumbersClass : NSObject

- (void)numbersMethod;

@end

@implementation NumbersClass

- (void)numbersMethod {
    NSLog(@"This is a out numbering method");
}

@end

int main(void) {
    
    //in order to save the basic data types like int, float, bool in object form,
    
    //Objective-C provides a range of menthods to work with NSNumber and important ones are listed in following table.
    
    /*
     1
     + (NSNumber *)numberWithBool:(BOOL)value

     Creates and returns an NSNumber object containing a given value, treating it as a BOOL.

     2
     + (NSNumber *)numberWithChar:(char)value

     Creates and returns an NSNumber object containing a given value, treating it as a signed char.

     3
     + (NSNumber *)numberWithDouble:(double)value

     Creates and returns an NSNumber object containing a given value, treating it as a double.

     4
     + (NSNumber *)numberWithFloat:(float)value

     Creates and returns an NSNumber object containing a given value, treating it as a float.

     5
     + (NSNumber *)numberWithInt:(int)value

     Creates and returns an NSNumber object containing a given value, treating it as a signed int.

     6
     + (NSNumber *)numberWithInteger:(NSInteger)value

     Creates and returns an NSNumber object containing a given value, treating it as an NSInteger.

     7
     - (BOOL)boolValue

     Returns the receiver's value as a BOOL.

     8
     - (char)charValue

     Returns the receiver's value as a char.

     9
     - (double)doubleValue

     Returns the receiver's value as a double.

     10
     - (float)floatValue

     Returns the receiver's value as a float.

     11
     - (NSInteger)integerValue

     Returns the receiver's value as an NSInteger.

     12
     - (int)intValue

     Returns the receiver's value as an int.

     13
     - (NSString *)stringValue

     Returns the receiver's value as a human-readable string.
     */
    
    return 0;
}

//Example for using NSNumber which multiplies two numbers and returns the product.

@interface NumberClass : NSObject

- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b;

@end

@implementation NumberClass

- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b {
    float number1 = [a floatValue];
    float number2 = [b floatValue];
    float product = number1 * number2;
    NSNumber *result = [NSNumber numberWithFloat:product];
    return result;
}

@end

int anotherMain(void) {
    @autoreleasepool {
        
        NumberClass *numberClass = [[NumberClass alloc]init];
        NSNumber *a = [NSNumber numberWithFloat:10.5];
        NSNumber *b = [NSNumber numberWithFloat:10.0];
        NSNumber *result = [numberClass multiplyA:a withB:b];
        NSString *resultString = [result stringValue];
        NSLog(@"The product is %@", resultString);
        return 0;
    }
}
