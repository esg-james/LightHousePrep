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
        _rollsSinceLastReset = 0;
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

- (void)holdDie:(int)atIndex {
    
    [self.dieHeld addObject:self.dieLeft[atIndex]];
    [self removeDie:atIndex];
  
}

- (void)removeDie:(int)atIndex {
    [self.dieLeft removeObjectAtIndex:atIndex];
}

-(void) unholdDie: (int)atIndex {
    
    Dice *removedDie = self.dieHeld[atIndex];
    [self.dieHeld removeObjectAtIndex:atIndex];
    [self.dieLeft addObject:removedDie];
    
}

- (void)resetHeldDie {
    
    for(Dice *die in self.dieHeld) {
        
        [self.dieLeft addObject:die];
    }
    [self.dieHeld removeAllObjects];
}

- (int)finalScore {
    
    int score = 0;
    
    for(Dice *die in self.dieHeld)
    {
        score += die.rolledNumber;
    }
    NSLog(@"Your score was: %d",score);
    return score;
    
}

- (void)rollsSinceReset {
    
    NSLog(@"This is the print: %d",self.rollsSinceLastReset);
    self.rollsSinceLastReset = 0;
    
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", _dieLeft];
}

@end
