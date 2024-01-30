//
//  loopsClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-01-30.
//

#import <Foundation/Foundation.h>

@interface LoopsClass : NSObject

- (void)loopsMethod;

@end

@implementation LoopsClass

- (void)loopsMethod {
    NSLog(@"Loopdy Loop n Pull");
}

@end

int main(void) {
    
    NSLog(@"Let's learn about loops");
    
    //Loop: allows you to execute a statement or group of statements multiple times
    
    ///while loop: Repeats a statement or group of statements while a given conidition is true. It tests the condition before executing the loop body.
    
    int a = 10;
    
    while (a < 20) {
        NSLog(@"value of a: %d\n", a);
        a++;
    }
    
    ///for loop: Execute a sequence of statements multiple times and abbreviates the code that manages the loop variable.
    
    int i;
    
    for( i = 10; i < 20; i++) {
        NSLog(@"value of a: %d\n", a);
    }
    
    ///do while loop: Like a while statement, except it tests the condition at the end of the loop body.
    
    int u = 5;
    
    do {
        NSLog(@"value of a: %d\n", u);
        u++;
    } while( u < 20 );
    
    ///nested loops: You can use one or more loops inside any another while, for, or do..while loop
    
    int g;
    int h;
    
    for (g = 5; g < 10; g++) {
        for (h = 2; h < 5; h++) {
            NSLog(@"Nesting Loops");
        }
    }
    
    
    //Loop control statements change execution from its normal sequence. When execution leaves a scope, all automatic objects that were created in that scope are destroyed.
    
    ///break statement: Terminates the loop or switch statement and transfers execution to statement immediately following the loop or switch.
    
    ///continue statement: Causes the loop to skip the remainder of its body and immediately retest its condition prior to reiterating.
    
    //How to make an Infinite Loop:
    
    for( ; ; ) {
        NSLog(@"This loop will run forever");
    }
    
    //for ( ; ; ) is leaving the conditional expression empty
    
    return 0;
}
