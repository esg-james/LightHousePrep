//
//  GameController.m
//  ThreeLow
//
//  Created by James Oliver on 2019-05-29.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dieLeft = [[NSMutableArray alloc]init];
        _dieHeld = [[NSMutableArray alloc]init];
    }
    return self;
}

- (NSMutableArray *)addDie {
    for(int i = 0; i < 5; i++) {
        Dice *die = [[Dice alloc]init];
        [_dieLeft addObject:die];
    }
    return _dieLeft;
}

- (NSMutableArray *)holdDie {
    return _dieHeld;
}

- (void)removeDie {
    
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", _dieLeft];
}

@end
