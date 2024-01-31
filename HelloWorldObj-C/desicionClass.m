//
//  desicionClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-01-31.
//

#import <Foundation/Foundation.h>

@interface DesicionClass : NSObject

- (void)desicionMethod;

@end

@implementation DesicionClass

- (void)desicionMethod {
    NSLog(@"Desicion Making Method");
}

@end

int main(void) {
    //Desicion making structures require that the programmer specify one or more conditions to be evaluated or tested by the program, along with a statement or statements to be executed if the conidition is determined to be true, and optionally, other statements to be executed if the condition is determined to be false.
    
    //Following is the general form of a typical desicion making structure found in most of the programming langauges.
    
    //Objective-C programming languages assumes any non-zero and non-null values as true, and if is either zero or null, then it is assumed as false value.
    
    //Objective-C programming language provides following types of desicion making statements:
    
    //if statement: consists of a boolean expression followed by one or more statements.
    
    //if...else statement: can be followed by an optional else statement, which executes when the boolean expression is false.
    
    //nested if statements: you can use one if or else if statement inside another if or else if statement(s).
    
    //switch statement: allows a variable to be tested for equality against a list of values.
    
    //nested switch statements: you can use one switch statement inside another switch statement(s).
    
    ///The ? : Operator
    
    //Ex: Exp1 ? Exp2 : Exp3;
    //If Exp1 is evaluated true then Exp2 becomes the value of the variable / expression but if it's false then Exp3 becomes the value.
    
    int a = 10;
    
    if ( a < 20 ) {
        NSLog(@"a is less than 20\n");
    }
    
    switch (a) {
        case 10:
            NSLog(@"a is 10\n");
        case 25:
            NSLog(@"a is 25");
        case 20:
            NSLog(@"a is 20");
        default:
            break;
    }
}
