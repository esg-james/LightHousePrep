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
    
    NSString *className = [_questionSubclassNames objectAtIndex:arc4random_uniform(4)];
    NSLog(@"%@",className);
    return [[NSClassFromString(className) alloc]init];
}

@end
