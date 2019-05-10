//
//  main.m
//  Calculate_Module5
//
//  Created by James Oliver on 2019-05-09.
//  Copyright © 2019 James Oliver. All rights reserved.
//

//importing foundation library
#import <Foundation/Foundation.h>


//NSString *math = @"math";
//function prototype
void arithmetic(void);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //function call
        arithmetic();
    }
    return 0;
}

void arithmetic(){
    
    //operations
    enum operationType{add, subtract, multiply, divide};
    enum operationType currentOperation = divide;
    
    //declarations
    NSInteger firstNumber = 66;
    NSInteger secondNumber = 33;
    NSInteger result = firstNumber / secondNumber;
    //NSString *math = @"addition";
    
    
    switch(currentOperation){
        case add:
            result = firstNumber + secondNumber;
            NSLog(@"the operation is addition and the result is %li",result);
            break;
        case subtract:
            result = firstNumber - secondNumber;
            NSLog(@"the operation is subtraction and the result is %li",result);
            break;
        case multiply:
            result = firstNumber * secondNumber;
            NSLog(@"the operation is multiplication and the result is %li",result);
            break;
        case divide:
            result = firstNumber / secondNumber;
            NSLog(@"the operation is division and the result is %li",result);
            break;
    }
    //NSLog(math,currentOperation,result);
}
