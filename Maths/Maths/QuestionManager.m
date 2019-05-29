//
//  QuestionManager.m
//  Maths
//
//  Created by James Oliver on 2019-05-29.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"


@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc]init];
    }
    return self;
}

//-(void)addQuestion:(NSString *)newQuestion {
//    
//    [_questions addObject:newQuestion];
//    NSLog(@"%@",newQuestion);
//    
//}

- (NSString *)description
{
    for (id obj in _questions) {
        
        NSString *description = [obj description];
        NSLog(@"%@",description);
    }
    return 0;
}

- (NSTimeInterval )timeOutput {

    int totalTimePassed = 0, averageTimePassed = 0;
    
    for(Question *question in _questions) {

        totalTimePassed += [question timeDiff];
        
        averageTimePassed = totalTimePassed / _questions.count;

    }
    NSLog(@"Total Time: %1$lds Average Time Per Question: %2$lds",(long)totalTimePassed,(long)averageTimePassed);
    return averageTimePassed;
}

@end
