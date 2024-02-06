//
//  arraysClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-02-05.
//

#import <Foundation/Foundation.h>

@interface ArraysClass : NSObject 

- (void)arraysMethod;

@end

@implementation ArraysClass

- (void)arraysMethod {
    NSLog(@"This is a dimensional method");
}

@end

int main(void) {
    //Array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.
    
    //First elemnt is [0]
    
    //Declaring array in Obj-C
    
    double balance[10];
    
    //or you can declare like this:
    
    double secondBalance[5] = {1000.0, 2.0, 3.4, 17.0, 50.0};
    
    //The array above cannot be larger than the number of elements that we declare for the array between square brackets [ ].
    
    //You can also declare an array like this:
    
    double thirdBalance[] = {1000.0, 2.0, 3.4, 17.0, 50.0};
    
    //And this array would have five values being held
    
    //Accessing Array Elements
    //An element is accessed by indexing the array name.
    
    double salary = balance[9]; //will grab the 10th element in the array
}


int secondMain(void) {
    int n[10]; //this is an array of 10 integers
    int i, j;
    
    // initialize elements of array n to 0
    
    for ( i = 0; i < 10; i++) {
        n[ i ] = i + 100; //set element at location
    }
    
    // output each array element's value
    
    for (j = 0; j < 10; j ++) {
        NSLog(@"Element[%d] = %d\n", j, n[j]);
    }
    
    
    /* Multi-dimensional arrays:
    
    Objective-C supports multidimensional arrays. The simplest form of the multidimensional array is the two-dimesional array.
     
     */
    
    /* Passing arrays to functions
    
    You can pass to the function a pointer to an array by specifying the array's name without an index.
    
     */
    
    /* Return array from a function
     
     Objective-C allows a function to return an array.
     
     */
    
    /* Pointer to an array
     
     You can generate a pointer to the first element of an array by simply specifying the array name, without any index
     
     */
    
    return 0;
}
