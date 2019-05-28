//
//  ScoreKeeper.m
//  Maths
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper



- (void)getScore:(BOOL)isAnswerCorrect {
    
    if(isAnswerCorrect) {
        _rightCount++;
    }
    else {
        _wrongCount++;
    }
    int totalAnswers = _rightCount + _wrongCount;
    NSLog(@"Right Answers: %d\n Wrong Answers: %d\n Success Rate: %d %%",_rightCount,_wrongCount, 100 * _rightCount / totalAnswers);
}



@end
