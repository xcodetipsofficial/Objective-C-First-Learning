//
//  blocksClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-02-03.
//

#import <Foundation/Foundation.h>

@interface BlocksClass : NSObject

- (void)blocksMethod;

@end

@implementation BlocksClass

- (void)blocksMethod {
    NSLog(@"This is a blocked method");
}

@end

int main(void) {
    //Block Declaration Syntax:
    // returntype (^blockName)(argumentType);
    
    //An Objective-C class defines an object that combines data with related behavior. Sometimes, it makes sense just to represent a single task or unit of behaivor, rather than a collection of methods.
    
    //Blocks are a language-level feature added to C, Objective-C and C++ which allow you to create distinct segments of code that can be passed around to methods or functions as if they were values. Blocks are Objective-C objects which means they can be added to collections like NSArray or NSDisctionary. They also have the ability to capture values from the enclosing space, making them similar to closures or lambdas in other programming languages.
    
    void (^simpleBlock)(void) = ^{
        NSLog(@"This is a block");
    };
    
    simpleBlock();
    
    //Blocks can also take arguments and return values just like methods and functions.
    
    //Example to implement and invoke a block with arguments and return values.
    
    double (^multiplyTwoValues)(double, double) =
    ^(double firstValue, double secondValue) {
        return firstValue * secondValue;
    };
    
    double result = multiplyTwoValues(2,4);
    NSLog(@"The result is %f", result);
    
}

//Using typedef in a block
typedef void (^CompletionBlock)(void);
@interface SampleBlockClass : NSObject

- (void)performActionWithCompletion:(CompletionBlock)completionBlock;

@end


@implementation SampleBlockClass

- (void)performActionWithCompletion:(CompletionBlock)completionBlock {
    NSLog(@"Action Performed");
    completionBlock();
}

@end

int mainTwo(void) {
    
    SampleBlockClass *sampleBlockClass = [[SampleBlockClass alloc]init];
    [sampleBlockClass performActionWithCompletion:^{
        NSLog(@"Completion is called to intimate action is performed.");
    }];
    
    return 0;
}
