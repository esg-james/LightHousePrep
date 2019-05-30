//
//  Dice.m
//  ThreeLow
//
//  Created by James Oliver on 2019-05-29.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _die = arc4random_uniform(6);
    }
    return self;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"%d", _die];
}

@end
