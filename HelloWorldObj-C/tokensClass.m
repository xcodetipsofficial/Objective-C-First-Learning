//
//  tokensClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-01-24.
//

#import <Foundation/Foundation.h>

@interface TokensClass : NSObject

- (void)tokenMethod;

@end

@implementation TokensClass

- (void)tokenMethod {
    NSLog(@"This statement is separated by tokens. \n");
    /*
     like so:
     NSLog
     @
     (
        "This statement is separated by tokens. \n"
     )
     ;
     */
    
    //every statement should end with a semicolon
}

@end

int main(void) {
    
    TokensClass *tokensClass = [[TokensClass alloc]init];
    [tokensClass tokenMethod];
    
    //Obj-C is a case sensitive language so manpower and Manpower are two different identifiers
    /*
     some reserved words:
     
     auto
     break
     case
     char
     const
     continue
     default
     do
     double
     NSObject
     property
     weak
     
     else
     enum
     extern
     float
     for
     goto
     if
     int
     protocol
     NSInteger
     nonatomic;
     unsafe_unretained;
     
     long
     register
     return
     short
     signed
     sizeof
     static
     struct
     interface
     NSNumber
     retain
     readwrite
     
     switch
     typedef
     union
     unsigned
     void
     volatile
     while
     _Packed
     implementation
     CGFloat
     strong
     readonly
     
     */
    
    //Basic types: They are arithmetic types and consist of the two types: (a) integer types and (b) floating-point types.
    
    //Enumerated types: They are again arithmetic types and they are used to define variables that can only be assigned certain discrete integer values throughout the program.
    
    //Void: The type specifier void indicates that no value is available.
    
    //Derived types: They include (a) Pointer types, (b) Array types, (c) Structure types, (d) Union types and (e) Function types.
    
    /*
     char    1 byte    -128 to 127 or 0 to 255
     unsigned char    1 byte    0 to 255 //positive values only unsigned
     signed char    1 byte    -128 to 127 //signed can have negative values
     int    2 or 4 bytes    -32,768 to 32,767 or -2,147,483,648 to 2,147,483,647
     unsigned int    2 or 4 bytes    0 to 65,535 or 0 to 4,294,967,295
     short    2 bytes    -32,768 to 32,767
     unsigned short    2 bytes    0 to 65,535
     long    4 bytes    -2,147,483,648 to 2,147,483,647
     unsigned long    4 bytes    0 to 4,294,967,295
     */
    
    /*
     float    4 byte    1.2E-38 to 3.4E+38    6 decimal places
     double    8 byte    2.3E-308 to 1.7E+308    15 decimal places
     long double    10 byte    3.4E-4932 to 1.1E+4932    19 decimal places
     */
    
    NSLog(@"Storage size for int : %lu \n", sizeof(int));
    
    NSLog(@"Storage size for float : %lu \n", sizeof(float));
    
    char c; //Typically a single octet (one byte). This is an integer type.
    int i; //The most natural size of integer for the machine.
    float f; //A single-precision floating point value.
    double d; //A double-precision floating point value.
    void v(void); //Represents the absence of type.
    
    extern int p; //means you can declare this variable at any place, so you can declare it out of scope
    
    //variables are l-values because they are typically on the left side of the expression
    //number literals are r-values because they are on the right side of the expression
    
    return 0;
}

extern int w; //like so

int func(void);

int func(void) {
    return 0;
}

int useFunc(void) {
    int i = func();
    return i;
}


