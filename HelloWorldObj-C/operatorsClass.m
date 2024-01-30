//
//  operatorsClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-01-30.
//

#import <Foundation/Foundation.h>

@interface OperatorsClass : NSObject

- (void)operatorsMethod;

@end

@implementation OperatorsClass

- (void)operatorsMethod {
    NSLog(@"This is operating smoothly");
}

@end


int main(void) {
    
    /*
    Arithmetic Operators
    Relational Operators
    Logical Operators
    Bitwise Operators
    Assignment Operators
    Misc Operators
     */
    
    ///Arithmetic Operators
    ///+ Adds two operands
    ///- Subtracts second operand from the first
    ///* Multiplies both operands
    //// Divides numerator by denominator
    ///% Modulus Operator and remainder of after an integer division
    ///++ Increment operator increases integer value by one
    ///-- Decrement operator decreases integer value by one
    
    ///Relational Operators
    ///== Checks if the values of two operands are equal or not; if yes, then condition becomes true
    ///!= Checks if the values of two operands are equal or not; if values are not equal, then condition becomes true
    ///> Checks if the value of left operand is greater than the value of right operand; if yes, then condition becomes true.
    ///< Checks if the value of left operand is less than the value of right operand; if yes, then condition becomes true.
    ///>= Checks if the value of left operand is greater than or equal to the value of right operand; if yes, then condition becomes true
    ///<= Checks if the value of left operand is less than or equal to the value of right operand; if yes, then condition becomes true.
    
    ///Logical Operators
    ///&& Called Logical AND operator. If both the operands are non zero then condition becomes true.
    ///|| Called Logical OR Operator. If any of the two operands is non zero then condition becomes true.
    ///! Called Logical NOT Operator. Use to reverses the logical state of its operand. If a condition is true, then Logical NOT operator will make false.
    
    ///Bitwise Operators
    ///Bitwise operator works on bits and perform bit by bit operation. The truth tables for &, |, and ^ are as follows -
    ///p    q    p & q    p | q    p ^ q
    ///0    0    0    0    0
    ///0    1    0    1    1
    ///1    1    1    1    0
    ///1    0    0    1    1
    ///
    ///Assume if A = 60; and B = 13; now in binary format they will be as follows −
    
    ///A = 0011 1100

    ///B = 0000 1101
    ///
    ///A&B = 0000 1100
    
    ///A|B = 0011 1101

    ///A^B = 0011 0001

    ///~A  = 1100 0011
    ///
    ///
    ///&    Binary AND Operator copies a bit to the result if it exists in both operands.    (A & B) will give 12, which is 0000 1100
    ///|    Binary OR Operator copies a bit if it exists in either operand.    (A | B) will give 61, which is 0011 1101
    ///^    Binary XOR Operator copies the bit if it is set in one operand but not both.    (A ^ B) will give 49, which is 0011 0001
    ///~    Binary Ones Complement Operator is unary and has the effect of 'flipping' bits.    (~A ) will give -61, which is 1100 0011 in 2's complement form.
    ///<<    Binary Left Shift Operator. The left operands value is moved left by the number of bits specified by the right operand.    A << 2 will give 240, which is 1111 0000
    ///>>    Binary Right Shift Operator. The left operands value is moved right by the number of bits specified by the right operand.    A >> 2 will give 15, which is 0000 1111
    
    ///Assignment Operators
    ///= Simple assignment operator, Assigns values from right side operands to left side operand
    ///+= Add And assignment operator, it adds right operand to the left operand and assigns the result to left operand
    ///-= Subtract AND assignment operator, it subtracts right operand from the left operand and assigns the result to left operand
    ///*= Multiply AND assignment operator, It multiplies right operand with the left operand and assigns the result to left operand
    ////= Divide AND assignment operator, It divides left operand with the right operang and assigns the result to left operand
    ///%= Modulus AND assignment operator, It takes modulus using two operand and assigns the result ot left operand
    ///<<= Left shift AND assignment operator EX: C << = 2 is same as C = C << 2
    ///>>= Right shift AND assignment operator EX: C >>= 2 is same as C = C >> 2
    ///&= Bitwise AND assignment operator EX: C &=2 is same as C = C & 2
    ///^= Bitwise exclusive OR and assignment operator EX: C ^= 2 is same as C = C ^ 2
    ///|= bitwise inclusive OR and assignment operator EX: C|= 2 is same as C = C | 2
    
    ///Misc Operators
    ///sizeof() - Returns the size of an variable
    ///& - Returns the address of an variable
    ///* - Pointer to a variable
    ///? : - Condition Expression EX: If Condition is true ? Then value X : Otherwise value Y
    
    ///Operators Precedence in Objective-C
    ///Postfix     () [] -> . ++ - -      Left to right
    ///Unary     + - ! ~ ++ - - (type)* & sizeof     Right to left
    ///Multiplicative      * / %     Left to right
    ///Additive      + -     Left to right
    ///Shift      << >>     Left to right
    ///Relational      < <= > >=     Left to right
    ///Equality      == !=     Left to right
    ///Bitwise XOR     ^     Left to right
    ///Bitwise OR     |     Left to right
    ///Logical AND     &&     Left to right
    ///Logical OR     ||     Left to right
    ///Conditional     ?:     Right to left
    ///Assignment     = += -= *= /= %=>>= <<= &= ^= |=     Right to left
    ///Comma     ,     Left to right
}
