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
//I was looking around regarding #define and apparently the problem with it is it's hard to debug Could be wrong though?
#define ENUM_TABLE \
X(ADDITION),    \
X(SUBTRACTION),     \
X(MULTIPLICATION),\
X(DIVISION)\
//^operations contained in enum to spit out as strings

//read up on x macros and preprocessors during this assignment
#define X(a)    a
typedef enum Foo {
    ENUM_TABLE
} MyFooEnum;
#undef X

#define X(a)    @#a
//assigning values as strings
NSString * const enumAsString[] = {
    ENUM_TABLE
};
#undef X

//function prototype
void arithmetic(void);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        arithmetic();
        
        //create function that loops, incrementing int i
        
        //NSLog(@"The operation is %c and the result", *math);
    }
    return 0;
}

void arithmetic(){
    
    
    //operations
    enum operationType{add, subtract, multiply, divide};
    
    //asks for user input for mathematical function to perform, 0-addition, 1-subtraction, 2-multiplication, 3-division
    enum operationType currentOperation = multiply;
    NSLog(@"Enter a number from 0 to 3:\n");
    scanf("%d", &currentOperation);
    
    //declarations
    NSInteger firstNumber = 66;
    NSInteger secondNumber = 33;
    NSInteger result = firstNumber / secondNumber;
    //NSString *math = @"addition";
    MyFooEnum t;
    
    
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
