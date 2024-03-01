//
//  errorhandlingClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-03-01.
//

#import <Foundation/Foundation.h>

//In Objective-C programming, error handling is provided with NSError class available in Foundation framework.

//An NSError object encapsulates richer and more extensible error information than is possible using only an error code or error string. The core attributes of an NSError object are an error domain (represented by a string), a domain-specific error code and a user info dictionary containing application specific information.

/* NSError */

// Objective-C programs use NSError objects to convey information about runtime errors that users need to be informed about. In most cases, a program displays this error information in a dialog or sheet. But it may also interpret the information and either ask the user to attempt to recover from the error or attempt to correct the error on its own

// NSError Object consists of −

// Domain − The error domain can be one of the predefined NSError domains or an arbitrary string describing a custom domain and domain must not be nil.

// Code − The error code for the error.

// User Info − The userInfo dictionary for the error and userInfo may be nil.

@interface ErrorHandlingClass : NSObject

- (NSString *) getEmployeeNameForID:(int) id withError:(NSError **)errorPtr;

@end

@implementation ErrorHandlingClass

- (NSString *) getEmployeeNameForID:(int)id withError:(NSError *__autoreleasing *)errorPtr {
    if (id == 1) {
        return @"Employee Test Name";
    } else {
        NSString *domain = @"com.MyCompany.MyApplication.ErrorDomain";
        NSString *desc = @"Unable to complete the process";
        NSDictionary *userInfo = [[NSDictionary alloc]
        initWithObjectsAndKeys:desc,
                                  @"NSLocalizedDescriptionKey", NULL];
        *errorPtr = [NSError errorWithDomain:domain code:-101 userInfo:userInfo];
        return @"";
    }
}

@end

int main(void) {
    @autoreleasepool {
        ErrorHandlingClass *errorHandlingClass = [[ErrorHandlingClass alloc] init];
        NSError *error = nil;
        NSString *name1 = [errorHandlingClass getEmployeeNameForID:1 withError:&error];
        
        if (error) {
            NSLog(@"Error finding Name1: %@", error);
        } else {
            NSLog(@"Name1: %@", name1);
        }
        
        error = nil;
        NSString *name2 = [errorHandlingClass getEmployeeNameForID:2 withError:&error];
        
        if (error) {
            NSLog(@"Error finding Name2: %@", error);
        } else {
            NSLog(@"Name2: %@", name2);
        }
        
        return 0;
    }
}

//In the above example, we return a name if the id is 1, otherwise we set the user-defined error object.

// When the above code is compiled and executed, it produces the following result −

/*
 
 2013-09-14 18:01:00.809 demo[27632] Name1: Employee Test Name
 2013-09-14 18:01:00.809 demo[27632] Error finding Name2: Unable to complete the process
 
 */
