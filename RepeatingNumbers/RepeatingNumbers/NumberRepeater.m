//
//  NumberRepeater.m
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-18.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "NumberRepeater.h"

@implementation NumberRepeater

@synthesize largestNumber, count1, count2;

- (NSNumber *)largestNumber:(NSArray *)theArray {
    
    NSNumber *largestNumber = @0;
    for (NSNumber *number in theArray) {
        if ([number isGreaterThan:largestNumber]) {
            largestNumber = number;
        }
    }
    return largestNumber;
}


- (instancetype)initWithNumbers:(NSArray *)numbers {
    _theArray = numbers;
        
    return self;
    
}

-(NSString *)process {
    NSString *theString;
    
    for(NSArray *n in _theArray){
        
        for(int i = 0; i < [n count]; i++)
            {
                
                [theString stringByAppendingString:n[0]];
                //[theString componentsSeparatedByString:@","];
            }
     
        
    }
    
    

    return theString;
    //supposed to return a string here with each of the numbers repeated the appropriate amount of times
}



@end
