//
//  ArrayUtility.m
//  LargestNumber
//
//  Created by James Oliver on 2019-05-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ArrayUtility.h"

@implementation ArrayUtility

@synthesize largestNumber, smallestNumber, theArray, medianNumber, countGreater, countLesser;

- (NSNumber *)largestNumber:(NSArray *)theArray {
    
    NSNumber *largestNumber = @0;
    for (NSNumber *number in theArray) {
        if ([number isGreaterThan:largestNumber]) {
            largestNumber = number;
        }
    }
    return largestNumber;
}

-(NSNumber *)smallestNumber:(NSArray *)theArray {
    
    NSNumber *smallestNumber = @5;
    
    for (NSNumber *number in theArray) {
        if ([number isLessThan:smallestNumber]) {
            smallestNumber = number;
        }
    }
    return smallestNumber;
}

//Function that TAKES an array and RETURNS the median value of that array
-(float)medianNumber:(NSArray *)theArray  {
    //assigning float value to medianNumber
    float medianNumber = 0.0;
    //dividing array count by 2 to grab index of median
    unsigned long halfArrayCount = theArray.count / 2;
    //checking each number in the array to find the midpoint
    for (NSNumber *number in theArray) {
        countLesser = 0;
        countGreater = 0;
        NSNumber *newNum = number;
        
        //there should be a method to say I want to go through every single item in this array
        for (NSNumber *otherNumber in theArray) {
            if([newNum isEqualToNumber:otherNumber]){
                continue;
            }
            
            else if([newNum isGreaterThan:otherNumber]){
                countGreater ++;
            }
            
           else if([newNum isLessThan:otherNumber]){
                countLesser ++;
            }
            
        }
        
        if(countGreater == halfArrayCount && countLesser == halfArrayCount) {
            medianNumber = [newNum floatValue];
        }
        
    }
    return medianNumber;
    
    
}



@end
