//
//  AdditionQuestion.m
//  Maths
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _startTime = [NSDate date];
        _rightValue = 1 + arc4random_uniform(20);
        _leftValue = 1 + arc4random_uniform(20);
        _playerNumber = 1;
    }
    return self;
}

- (NSString *)question {
    _startTime = [NSDate date];
    return _question;
}

// overriding getter
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)timeDiff {
    return [_endTime timeIntervalSinceDate:_startTime];
}



@end
