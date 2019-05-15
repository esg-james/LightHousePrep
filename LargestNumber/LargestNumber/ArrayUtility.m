//
//  ArrayUtility.m
//  LargestNumber
//
//  Created by James Oliver on 2019-05-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ArrayUtility.h"

@implementation ArrayUtility

@synthesize largestNumber,theArray;

- (NSNumber *)largestNumber:(NSArray *)theArray {
    //instantiating array of nums using shorthand method

    //i originally had a @-1 in there but it read as the highest number, not 100% sure why, will have to check in on that
    //defining var to hold the 'highest' value
    NSNumber *largestNumber = @0;
    //newstuff
    
    //for loop using count to cycle through array elements
    for(int i = 0; i <[theArray count]; i++){
        //defining and assigning value to newNum from array index[i]
        NSNumber *newNum = [theArray objectAtIndex:i];
        
        //if statement that sets highestNum to newNum if it is greater in value
        if(newNum > largestNumber)
            largestNumber = newNum;
    }
    //print it!
    //NSLog(@"%@ is the highest number", largestNumber);
    return largestNumber;
}



@end
