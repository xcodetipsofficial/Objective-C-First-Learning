//
//  sampleClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-01-23.
//

#import <Foundation/Foundation.h> //tells Obj-c compiler to include Foundation.h file before going to actual compilation.

@interface SampleClass : NSObject //implement sample class interface
- (void)sampleMethod; //declare a method
@end //marks the end of an interface

//this is how to create an interface, inherits NSObject, which is the base class of all objects.


@implementation SampleClass

- (void)sampleMethod { //shows implementation of the sampleMethod
    NSLog(@"Hello, World! \n"); //displays ehllo world message in console
}

@end //marks the end of an implementation

int main(void) { //this is where program execution begins
    /* my first program in Objective-C */
    SampleClass *sampleClass = [[SampleClass alloc]init]; //initializes object
    [sampleClass sampleMethod]; //calls the method
    return 0;
}
