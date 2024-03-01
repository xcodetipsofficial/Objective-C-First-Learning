//
//  nslogClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-03-01.
//

#import <Foundation/Foundation.h>

@interface NSLogClass : NSObject

- (void)nslogMethod;

@end

@implementation NSLogClass

- (void)nslogMethod {
    NSLog(@"Hello World");
}

@end

//Since the NSLogs we use in our application, it will be printed in logs of device and it is not good to print logs in a live build. Hence, we use a type definition for printing logs and we can use them as shown below.

#if DEBUG == 0
#define DebugLog(...)
#elif DEBUG == 1
#define DebugLog(...) NSLog(__VA_ARGS__)
#endif

int main(void) {
    DebugLog(@"Debug log, our custom addition gets \
    printed during debug only");
    NSLog(@"NSLog gets printed always");
    return 0;
}

/*
 
 Now, when we compile and run the program in debug mode, we will get the following result.

2013-09-11 02:47:07.723 demo[618] Debug log, our custom addition gets printed during debug only
2013-09-11 02:47:07.723 demo[618] NSLog gets printed always
Now, when we compile and run the program in release mode, we will get the following result.

2013-09-11 02:47:45.248 demo[3158] NSLog gets printed always

*/
