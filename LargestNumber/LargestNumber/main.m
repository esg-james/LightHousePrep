//
//  main.m
//  LargestNumber
//
//  Created by James Oliver on 2019-05-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayUtility.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        ArrayUtility *arrayUtility = [[ArrayUtility alloc]init];
        NSArray *arrayNum = @[@10000,@3,@876,@1011,@80,@5000,@9999];
        [arrayUtility largestNumber:arrayNum];
        NSArray *arrayNum2 = @[@1,@3,@7,@57,@33,@65,@87];
        [arrayUtility largestNumber:arrayNum2];
        
        NSArray *arrayNum3 = @[@3,@7,@57,@33,@65,@87,@99];
        [arrayUtility smallestNumber:arrayNum3];
        
        NSArray *arrayNum4 = @[@3,@7,@57,@33,@65,@87,@99];
        [arrayUtility medianNumber:arrayNum4];
        //NSLog(@"the median number is %@",[arrayUtility smallestNumber:arrayNum4]);
        
        
        
        
        NSLog(@"the largest number is %@",[arrayUtility largestNumber:arrayNum]);
        NSLog(@"the largest number is %@",[arrayUtility largestNumber:arrayNum2]);
        NSLog(@"the smallest number is %@",[arrayUtility smallestNumber:arrayNum3]);
        NSLog(@"the median number is %f",[arrayUtility medianNumber:arrayNum4]);
        

        
        
    }
    return 0;
}
