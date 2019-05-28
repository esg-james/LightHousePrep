//
//  AdditionQuestion.m
//  Maths
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
       _number1 = 10 + arc4random_uniform(90);
       _number2 = 10 + arc4random_uniform(90);
       _question = [NSString stringWithFormat:@"%li + %li", (long)_number1, (long)_number2];
        _answer = _number1 + _number2;
    }
    return self;
}



@end
