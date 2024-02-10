//
//  structuresClass.m
//  HelloWorldObj-C
//
//  Created by Kyle Wilson on 2024-02-10.
//

#import <Foundation/Foundation.h>

@interface StructuresClass : NSObject

- (void)structuresMethod;

@end

@implementation StructuresClass

- (void)structuresMethod {
    NSLog(@"This is a structurally method");
}

@end

int main(void) {
    //Struct is another user-defined data type available in Objective-C programming which alows you to combine data items of different kinds.
    
    //Structures are used to represent a record, suppose you want to keep track of your books in a library. You might want to track the following attributes about each book:
    
    /*
     - Title
     - Author
     - Subject
     - Book ID
     */
    
    //Defining a Structure:
    
    //To define a structure, you must use the struct statement. The struct statement defines a new data type, with more than one member for your program. The format of the struct statement is shown below:
    
    /*
     struct [structure tag] {
     member definiton;
     member definiton;
     ...
     member definition;
     } [one or more structure variables];
     */
    
    //The structure tag is optional and each member definition is a normal variable definition, such as int i; or float f; or any other valid variable definiton. At the end of the structure's definition, before the final semicolon, ou can specify one or more structure variables but it is optional. Here is the way you would declare the Book structure -
    
    struct Books {
        NSString *title;
        NSString *author;
        NSString *subject;
        int book_id;
    };
    
    struct Books Book1;
    struct Books Book2;
    
    Book1.title = @"Objective-C Programming";
    Book1.author = @"Nuha Ali";
    Book1.subject = @"Objective-C Programming Tutorial";
    Book1.book_id = 6495407;
    
    Book2.title = @"Telecom Billing";
    Book2.author = @"Zara Ali";
    Book2.subject = @"Telecom Billing Tutorial";
    Book2.book_id = 6495700;
    
    NSLog(@"Book 1 title : %@\n", Book1.title);
    NSLog(@"Book 1 author : %@\n", Book1.author);
    NSLog(@"Book 1 subject : %@\n", Book1.subject);
    NSLog(@"Book 1 book_id : %d\n", Book1.book_id);
    
    NSLog(@"Book 2 title : %@\n", Book2.title);
    NSLog(@"Book 2 author : %@\n", Book2.author);
    NSLog(@"Book 2 subject : %@\n", Book2.subject);
    NSLog(@"Book 2 book_id : %d\n", Book2.book_id);
    
    return 0;
}

//Structures as Function Arguments:

struct Books {
    NSString *title;
    NSString *author;
    NSString *subject;
    int book_id;
};

@interface SampleClass : NSObject

- (void)printBook:(struct Books) book;

@end

@implementation SampleClass

- (void)printBook:(struct Books)book {
    NSLog(@"Book title : %@\n", book.title);
    NSLog(@"Book author : %@\n", book.author);
    NSLog(@"Book subject : %@\n", book.subject);
    NSLog(@"Book book_id : %d\n", book.book_id);
}

@end

int mainTwo(void) {
    SampleClass *sampleClass = [[SampleClass alloc]init];
    
    struct Books Book1;        /* Declare Book1 of type Book */
    struct Books Book2;        /* Declare Book2 of type Book */
    
    /* book 1 specification */
    Book1.title = @"Objective-C Programming";
    Book1.author = @"Nuha Ali";
    Book1.subject = @"Objective-C Programming Tutorial";
    Book1.book_id = 6495407;
    
    /* book 2 specification */
    Book2.title = @"Telecom Billing";
    Book2.author = @"Zara Ali";
    Book2.subject = @"Telecom Billing Tutorial";
    Book2.book_id = 6495700;
    
    [sampleClass printBook:Book1];
    
    [sampleClass printBook:Book2];
    
    return 0;
}

//Pointers to Structures:

struct Books *struct_pointer;

//Now, you can store the address of a structure variable in the above-defined pointer variable. To find the address of a structure variable, place the & operator before the structure's name as follows -

/* struct_pointer = &Book1; */

//To access the members of a structure using a pointer to that structure, you must use the -> operator as follows -
/* struct_pointer->title */

//Let us re-write the above example using structure pointer:

@interface BookClass : NSObject

- (void)printBook:(struct Books *) book;

@end

@implementation BookClass

- (void)printBook:(struct Books *)book {
    NSLog(@"Book title : %@\n", book->title);
    NSLog(@"Book author : %@\n", book->author);
    NSLog(@"Book subject : %@\n", book->subject);
    NSLog(@"Book book_id : %d\n", book->book_id);
}

@end

int mainFour(void) {
    struct Books Book1;        /* Declare Book1 of type Book */
    struct Books Book2;        /* Declare Book2 of type Book */
    
    /* book 1 specification */
    Book1.title = @"Objective-C Programming";
    Book1.author = @"Nuha Ali";
    Book1.subject = @"Objective-C Programming Tutorial";
    Book1.book_id = 6495407;
    
    /* book 2 specification */
    Book2.title = @"Telecom Billing";
    Book2.author = @"Zara Ali";
    Book2.subject = @"Telecom Billing Tutorial";
    Book2.book_id = 6495700;
    
    SampleClass *sampleClass = [[SampleClass alloc]init];
    /* print Book1 info by passing address of Book1 */
    [sampleClass printBook:Book1];
    
    /* print Book2 info by passing address of Book2 */
    [sampleClass printBook:Book2];
    
    return 0;
}

//Bit Fields:

//Allow the packing of data in a structure. This is especially useful when memory or data storage is at a premium.

//Ex:

/*
 - Packing several objects into a machine word. e.g. 1 bit flags can be compacted.
 - Reading external file formats -- non-standard file formats could be read in E.g. 9 bit integers.
 */

struct packed_struct {
    unsigned int f1:1;
    unsigned int f2:1;
    unsigned int f3:1;
    unsigned int f4:1;
    unsigned int type:4;
    unsigned int my_int:9;
} pack;

//Here, the packed_struct contains 6 members: Four 1 bit flags f1..f3, a 4 bit type and a 9 bit my_int.

//Objective-C automatically packs the above bit fields as compactly as possible, provided that the maximum length of the field is less than or equal to the integer word length of the computer. If this is not the case, then some compilers may allows memory overlap for the fields whilst other would store the next field in the next word.
