//
//  stringsClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-02-08.
//

#import <Foundation/Foundation.h>

@interface StringsClass : NSObject

- (void)stringsMethod;

@end

@implementation StringsClass

- (void)stringsMethod {
    NSLog(@"This is a strings method");
}

@end

int main(void) {
    //String is represented as NSString and its subclass NSMutableString provides several ways for creating string objects. The simplest way to create a string object is to use to the Objective-C @"..." construct
    
    NSString *greeting = @"Hello";
    NSLog(@"Greeting message: %@\n", greeting);
    
    //Output: Greeting message: Hello
    
    //Objective-C supports a wide range of methods for manipulating strings:
    
    /*
     
     - (NSString *)capitalizedString;
     Returns a capitalized representation of the receiver.
     
     - (unichar)characterAtIndex:(NSUInteger)index;
     Returns the character at a given array position.
     
     - (double)doubleValue;
     Returns the floating-point value of the receiver's text as a double.
     
     - (float)floatValue;
     Returns the floating-point value of the receiver's text as a float.
     
     - (BOOL)hasPrefix:(NSString *)aString;
     Returns a Boolean value that indicates whether a given string matches the beginning characters of the receiver.
     
     - (BOOL)hasSuffix:(NSString *)aString;
     Returns a Boolean value that indicates whether a given string matches the ending characters of the receiver.
     
     - (id)initWithFormat:(NSString *)format ...;
     Returns an NSString object initialized by using a given format string as a template into which the remaining argument values are substituted.
     
     - (NSInteger)integerValue;
     Returns the NSInteger value of the receiver's text.
     
     - (BOOL)isEqualToString:(NSString *)aString;
     Returns a Boolean value that indicates whether a given string is equal to receiver using a literal Unicode-based comparison.
     
     - (NSUInteger)length;
     Returns the number of Unicode characters in the receiver.
     
     - (NSString *)lowercaseString;
     Returns lowercased representation of the receiver.
     
     - (NSRange)rangeOfString:(NSString *)aString;
     Finds and returns the range of the first occurrence of a give string within the receiver.
     
     - (NSString *)stringByAppendingFormat:(NSString *)format ...;
     Returns a string made by appending to the receiver a string constructed from a given format string and the following arguments.
     
     - (NSString *)stringByTrimmingCharactersInSet:(NSCharacterSet *)set;
     Returns a new string made by removing from both ends of the receiver characters contained in a given character set.
     
     - (NSString *)substringFromIndex:(NSUInteger)anIndex;
     Returns a new string containing the characters of the receiver from the one at a given index to the end.
     
     */
     
     //Examples using some above mentioned functions:
     
    NSString *str1 = @"Hello";
    NSString *str2 = @"World";
    NSString *str3;
    NSUInteger len;
    
    @autoreleasepool {
        /* uppercase string */
        str3 = [str2 uppercaseString];
        NSLog(@"Uppercase String : %@\n", str3);
        
        //Output: Uppercase String :  WORLD
        
        /* concatenates str1 and str2 */
        str3 = [str1 stringByAppendingFormat:@"World"];
        NSLog(@"Concatenated string: %@\n", str3);
        
        //Output: Concatenated string:   HelloWorld
        
        /* total length of str3 after concatenation */
        len = [str3 length];
        NSLog(@"Length of Str3 : %lu\n", (unsigned long)len);
        
        //Output: Length of Str3 :  10
        
        /* InitWithFormat */
        str3 = [[NSString alloc] initWithFormat:@"%@ %@", str1, str2];
        NSLog(@"Using InitWithFormat: %@\n", str3);
        
        //Output: Using initWithFormat:   Hello World
    }
    
    return 0;
}
