//
//  AdditionQuestion.m
//  Maths
//
//  Created by James Oliver on 2019-05-29.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
        self.rightValue = 1 + arc4random_uniform(20);
        self.leftValue = 1 + arc4random_uniform(20);
    }
    return self;
}

- (void)generateQuestion {
    super.answer = super.leftValue + super.rightValue;
    super.question = [[NSString alloc]initWithFormat:@"Player %ld: %ld + %ld", super.playerNumber,super.leftValue,super.rightValue];
}


@end
