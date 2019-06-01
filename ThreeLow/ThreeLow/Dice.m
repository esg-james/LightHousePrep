//
//  Dice.m
//  ThreeLow
//
//  Created by James Oliver on 2019-05-29.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Dice.h"

@implementation Dice


-(void)rollDie {
    
    int diceVal;
    
    diceVal = 1 + arc4random_uniform(6);
    
    if(diceVal == 3) {
        _rolledNumber = 0;
    }
    else {
        _rolledNumber = diceVal;
    }
    
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%d", _rolledNumber];
}

@end
