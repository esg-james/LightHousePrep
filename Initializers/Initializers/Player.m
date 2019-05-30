//
//  Player.m
//  Initializers
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Player.h"

@implementation Player

- (void)dealloc
{
    //CLOSE  the connection to the DB
    NSLog(@"The dealloc method is called automatically.");
}

- (id)init
{
    self = [self initWithInteger:5000];
    return self;
}

- (id)initWithInteger:(int) initialScore
{
    //OPEN a connection to a DB
    
    self = [super init];
    if (self) {
        _score = initialScore;
    }
    return self;
}



@end
