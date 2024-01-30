//
//  constantsClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-01-27.
//

#import <Foundation/Foundation.h>

@interface ConstantsClass : NSObject

- (void)constantsMethod;

@end

@implementation ConstantsClass

- (void)constantsMethod {
    NSLog(@"Constants!");
}

@end

int main(void) {
    ConstantsClass *constantClass = [[ConstantsClass alloc]init];
    [constantClass constantsMethod];
    
    //CONSTANTS: Are treated like regular variables except their values cannot be modified after their definition
    
    //Integer Literals:
    
//    85         /* decimal */
//    0213       /* octal */
//    0x4b       /* hexadecimal */
//    30         /* int */
//    30u        /* unsigned int */
//    30l        /* long */
//    30ul       /* unsigned long */
    
    //Escape Sequence Codes:
    
//    \\    \ character
//    \'    ' character
//    \"    " character
//    \?    ? character
//    \a    Alert or bell
//    \b    Backspace
//    \f    Form feed
//    \n    Newline
//    \r    Carriage return
//    \t    Horizontal tab
//    \v    Vertical tab
//    \ooo    Octal number of one to three digits
//    \xhh . . .    Hexadecimal number of one or more digits
    
    NSLog(@"Hello\tWorld\n\n");
    
    //String Literals: are enclosed in double quotes. "hello, dear"
    
    //Defining Constants:
    /*
     - using #define preprocessor
     - using const keyword
     */
    
}

#define LENGTH 10
#define WIDTH 5
#define NEWLINE '\n'

//Note that it is a good programming practice to define constants in CAPITALS. in all languages!

int area(void) {
    int area;
    area = LENGTH * WIDTH;
    NSLog(@"value of area : %d", area);
    NSLog(@"%c", NEWLINE);
    
    /*
     Output:
     2013-09-07 22:19:24.780 demo[25621] value of area : 50
     2013-09-07 22:19:24.781 demo[25621]
     */
    return 0;
    
}
