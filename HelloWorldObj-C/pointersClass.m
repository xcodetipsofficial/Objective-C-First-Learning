//
//  pointersClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-02-06.
//

#import <Foundation/Foundation.h>

@interface PointersClass : NSObject

- (void)pointersMethod;

@end

@implementation PointersClass

- (void)pointersMethod {
    NSLog(@"This is pointing at you.");
}

@end

int main(void) {
    
    //Dynamic memory allocation involves using Pointers
    
    //Every variable is a memory location and every memory location has its address defined which can be accessed using ampersand (&) operator, which denotes an address in memory.
    
    int var1;
    char var2[10];
    
    NSLog(@"Address of var1 variable: %x\n", &var1);
    NSLog(@"Address of var2 variable: %x\n", &var2);
    
    //Output var1: Address of var1 variable: 1c0843fc
    
    //Output var2: Address of var2 variable: 1c0843f0
    
    /* What is a Pointer? */
    
    //A pointer is a variable whose value is the address of another variable, for example, direct address of the memory location. Like any variable or constant, you must declare a pointer before you can use it to store any variable address. The general form of a pointer variable declaration is -
    
    //type *var-name;
    
    //The asterisk * you used to declare a pointer is the same asterisk that you use for multiplication. However, in this statement the asterisk is being used to designate a variable as a pointer. Following are the valid pointer declaration
    
    /*
     int    *ip; - pointer to an integer
     double *dp; - pointer to a double
     float  *fp; - pointer to a float
     char   *ch; - pointer to a character
     */
    
    //The actual data type of the value of all pointers, whether integer, float, character, or otherwise, is the same, a long hexadecimal number that represents a memory address. The only difference between pointers of different data types is the data type of the variable or constant that the pointer points to.
    
    /* How to use Pointers? */
    
    //There are few important operations, which we will do with the help of pointers very frequently. (A) we define a pointer variable, (B) assign the address of a variable to a pointer, and (C) finally access the value at the address available in the pointer variable. This is done by using unary operator * that returns the value of the variable located at the address specified by its operand.
    
    int var = 20; /* actual variable declaration */
    int *ip;      /* pointer variable declaration */
    ip = &var;    /* store address of var in pointer variable */
    
    NSLog(@"Address of var variable: %x\n", &var);
    
    //Output: Address of var variable: 337ed41c
    
    /* address stored in pointer variable */
    NSLog(@"Address stored in ip variable: %x\n", ip);
    
    //Output: Address stored in ip variable: 337ed41c
    
    /* access the value using the pointer */
    NSLog(@"Value of *ip variable: %d\n", *ip);
    
    //Output: Value of *ip variable: 20
    
    
    //NULL Pointers in Objective-C
    
    //It is always a good practice to assign a NULL value to a pointer variable in case you do not have exact address to be assigned. This is done at the time of variable declaration. A pointer that is assigned NULL is called a null pointer.
    
    //The NULL pointer is a constant with a value of zero defined in several standard libraries.
    
    int *ptr = NULL;
    NSLog(@"The value of ptr is : %x\n", ptr);
    
    //Output: The value of ptr is : 0
    
    //On most of the operating systems, programs are not permitted to access memory at address 0 because that memory is reserved by the operating system. However, the memory address 0 has special siginificance; it signals that the pointer is not intended to point to an accessible memory location. But by convention, if a pointer contains the null (zero) value, it is assumed to point to nothing.
    
    //To check for a null pointer, you can use an if statement as follows:
    
    if(ptr)     /* succeeds if p is not null */
    if(!ptr)    /* succeeds if p is null */
        
    
    //Pointer Concepts:
    
    /*
     
     Objective-C Pointer Arithmetic: There are four arithmetic operators that can be use on pointers: ++, --, +, -
     
     Objective-C Array of Pointers: You can define arrays to hold a number of pointers.
     
     Obective-C Pointer to Pointer: Objective-C allows you to have pointer on a pointer and so on.
     
     Passing pointers to functions in Objective-C: Passing an argument by reference or by address both enable the passed argument to be changed in the calling function by the called function.
     
     Return pointer from functions in Objective-C: Objective-C allows a function to return a pointer to local variable, static variable and dynamically allocated memory as well.

     */
    
    return 0;
    
}
