//
//  SubtractionQuestion.m
//  Maths
//
//  Created by James Oliver on 2019-05-29.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    super.answer = super.leftValue - super.rightValue;
    super.question = [[NSString alloc]initWithFormat:@"%ld - %ld", super.leftValue,super.rightValue];
}


@end
