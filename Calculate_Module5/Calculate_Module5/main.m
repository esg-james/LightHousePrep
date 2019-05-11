//
//  main.m
//  Calculate_Module5
//
//  Created by James Oliver on 2019-05-09.
//  Copyright © 2019 James Oliver. All rights reserved.
//

//importing foundation library

#import <Foundation/Foundation.h>

//enum to string experiment
#define ENUM_TABLE \
X(ADDITION),    \
X(SUBTRACTION),     \
X(MULTIPLICATION),\
X(DIVISION)\


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

//function prototype
void arithmetic(void);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyFooEnum t = SUBTRACTION;
        
        arithmetic();
        
    }
    return 0;
}

void arithmetic(){
    
    //operations
    enum operationType{add, subtract, multiply, divide};
    enum operationType currentOperation = multiply;
    
    //declarations
    NSInteger firstNumber = 66;
    NSInteger secondNumber = 33;
    NSInteger result = firstNumber / secondNumber;
    //NSString *math = @"addition";
    MyFooEnum t;
    //NSLog(@"%@", enumAsString[t]);
    
    
    switch(currentOperation){
        case add:
            result = firstNumber + secondNumber;
            t = ADDITION;
            NSLog(@"The operation is %@ and the result is: %ld", enumAsString[t],result);
            break;
        case subtract:
            result = firstNumber - secondNumber;
            t = SUBTRACTION;
            NSLog(@"The operation is %@ and the result is: %ld", enumAsString[t],result);
            break;
        case multiply:
            result = firstNumber * secondNumber;
            t = MULTIPLICATION;
            NSLog(@"The operation is %@ and the result is: %ld", enumAsString[t],result);
            break;
        case divide:
            result = firstNumber / secondNumber;
            t = DIVISION;
            NSLog(@"The operation is %@ and the result is: %ld", enumAsString[t],result);
            break;
    }
}
