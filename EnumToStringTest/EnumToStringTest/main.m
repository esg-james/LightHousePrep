//
//  main.m
//  EnumToStringTest
//
//  Created by James Oliver on 2019-05-10.
//  Copyright © 2019 James Oliver. All rights reserved.
//

    #import <Foundation/Foundation.h>





    int main(int argc, const char * argv[]) {
        @autoreleasepool {
            // insert code here...
    #define ENUM_TABLE \
    X(ILOVEMY),    \
    X(BUM)    \

    #define X(a)    a
            typedef enum Foo {
                ENUM_TABLE
            } MyFooEnum;
    #undef X
            
    #define X(a)    @#a
            NSString * const enumAsString[] = {
                ENUM_TABLE
            };
    #undef X
            
            MyFooEnum t = ILOVEMY;
            NSLog(@"%@", enumAsString[t]);
            
            t = BUM;
            NSLog(@"%@", enumAsString[t]);
           // NSLog(@"Hello, World!");
        }
        
        return 0;
    }




