//
//  ArrayUtility.m
//  LargestNumber
//
//  Created by James Oliver on 2019-05-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ArrayUtility.h"

@implementation ArrayUtility

@synthesize largestNumber, smallestNumber, theArray;

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



@end
