//
//  helloWorld.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-01-23.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    NSLog(@"hello world");
    [pool drain];
    return 0;
}
