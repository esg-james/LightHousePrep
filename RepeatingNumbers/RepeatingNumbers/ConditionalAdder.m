//
//  ConditionalAdder.m
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-19.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ConditionalAdder.h"

@implementation ConditionalAdder

- (instancetype)initWithNumbers:(NSArray *)numbers {
    
    _theArray = numbers;
    
    return self;
    
}

- (int)sumWithCondition:(NSString *)condition {
    
    NSInteger k = 0;
    
    for(NSNumber *n in _theArray){
        NSInteger m = [n integerValue];
        
        
     
            if(m % 2 == 0)
            {
                if([condition  isEqual: @"even"]) {
                    k = k+m;
                }
            }
                else
                {
                    if([condition  isEqual: @"odd"]) {
                        k = k+m;
                    }
                }
        }
        
    
    return (int)k;
}

@end
