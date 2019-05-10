//
//  main.m
//  Calculate_Module5
//
//  Created by James Oliver on 2019-05-09.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger firstNumber = 33;
        NSInteger secondNumber = 66;
        NSInteger result = firstNumber * secondNumber;
        
        NSLog(@"The first number is %i, the second number is %i, and the product of the two is %i",firstNumber,secondNumber,result);
    }
    return 0;
}
