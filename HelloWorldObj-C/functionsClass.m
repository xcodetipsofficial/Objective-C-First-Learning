//
//  functionsClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-02-02.
//

#import <Foundation/Foundation.h>

@interface FunctionsClass : NSObject

- (void)functionsMethod;

@end

@implementation FunctionsClass

- (void)functionsMethod {
    NSLog(@"This is a functioning Method");
}

@end

int main(void) {
    
    //A function is a group of statements that together perform a task. Every Objective-C program has one C function, which is main()
    
    //A function declaration tells the compiler about a function's name, return type, and parameters. A function definition provides the actual body of the function.
    
    //Functions are comprised of:
    ///
    ///Return Type - A method may return a value. The return_type is the data type of the value the function returns. Some methods perform the desired operations without returning a value. In this case, the return_type is the keyword void.
    ///Method Name - This is the actual name of the method. The method name and the parameter list together constitute the method signature.
    ///Arguments - A argument is like a placeholder. When a function is invoked, you pass a value to the argument. This value is reffered to as actual paramater or argument. The parameter list refers to the type, order, and number of the arguments of a method. Arguments are optional; that is, a method may contain no argument.
    ///Joining Argument - A joining argument is to make it easier to read and to make it clear while calling it.
    ///Method Body - The method body contains a collection of statements that define what the method does.
    ///
}

@interface SampleClass : NSObject

- (int)max:(int)num1 andNum2:(int)num2;

@end

@implementation SampleClass

- (int)max:(int)num1 andNum2:(int)num2 {
    int result;
    
    if (num1 > num2) {
        result = num1;
    } else {
        result = num2;
    }
    
    return result;
}

@end

int mainTwo(void) {
    int a = 100;
    int b = 100;
    int ret;
    
    SampleClass *sampleClass = [[SampleClass alloc]init];
    
    ret = [sampleClass max:a andNum2:b];
    
    NSLog(@"Max value is : %d\n", ret);
    return 0;
    
    //Max value is : 200 is the output
    
    //Function Arguments: if a function is to use arguments, it must declare variables that accept the values of the arguments. These variables are called the formal parameters of the function.
    
    //The formal parameters behave like other local variables inside the fucntion and are created upon entry into the function and destroyed upon exit.
    
    //Two ways when calling a function that arguments can be passed:
    
    ///Call by value - This method copies the actual value of an argument into the formal parameter of the function. In this case, changes made to the parameter inside the function have no effect on the argument.
    
    ///Call by reference - This method copies the address of an argument into the formal parameter. Inside the function, the address is used to access the actual argument used in the call. This means that changes made to the parameter affect the argument.
    
    ///By default, Objective-C uses call by value to pass arguments. In general, this means that code within a function cannot alter the arguments used to call the function, and above-mentioned example while calling max() function used the same method.
}
