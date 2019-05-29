//
//  QuestionFactory.m
//  Maths
//
//  Created by James Oliver on 2019-05-29.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    if (self = [super init]) {
        _questionSubclassNames = @[@"AdditionQuestion",@"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
    }
    return self;
}

- (Question *)generateRandomQuestion {
    int randomSelector = 0 + arc4random_uniform(4);
    NSString *randomChoice = _questionSubclassNames[randomSelector];
    //_questionSubclassNames = _questionSubclassNames[randomSelector];
    return [[NSClassFromString(randomChoice) alloc]init];
}

@end
