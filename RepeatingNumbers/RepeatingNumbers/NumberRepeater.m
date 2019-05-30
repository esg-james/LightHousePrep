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
    
    NSString *theString = @"";
    for(NSArray *n in _theArray){
        NSInteger m = [n[1] intValue];
        for ( int i = 0; i < m; ++i)  {
               // NSLog(@"%d",(int)n[1]);
            
                theString = [theString stringByAppendingString:[n[0] stringValue]];
            
                //[theString componentsSeparatedByCharactersInSet:valuesComma];
            }
        if(m > n.count){
            theString = [theString stringByAppendingString:@", "];
        }
        else {
            break;
        }
        
        
        
    }
    return theString;
}

@end

/* NSInteger idx1 = 3;
 NSInteger idx2 = 3;
 NSInteger arr [3][3] = {{0, 0, 0},
 {0, 0, 0},
 {0, 0, 0}};
 
 
 NSMutableString *finalString = [NSMutableString new];
 
 for ( NSInteger i = 0; i < idx1; ++i) {
 NSMutableString *temp = [NSMutableString new];
 for ( NSInteger j = 0; j < idx2; ++j) {
 [temp appendString:[NSString stringWithFormat:@"%ld", arr[i][j] ]];
 }
 [temp appendString: @""];
 [finalString appendString:temp];
 }
 
 NSLog(@"%@", finalString);*/
