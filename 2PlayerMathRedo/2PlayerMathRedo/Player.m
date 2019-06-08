//
//  Player.m
//  2PlayerMathRedo
//
//  Created by James Oliver on 2019-06-08.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Player.h"

@implementation Player

- (void)getScore:(BOOL)isAnswerCorrect {
    
    if(isAnswerCorrect) {
        self.rightCount++;
    }
    else {
        self.wrongCount++;
    }
    int totalAnswers = self.rightCount + self.wrongCount;
    NSLog(@"Right Answers: %d\n Wrong Answers: %d\n Success Rate: %d %%",self.rightCount,self.wrongCount, 100 * self.rightCount / totalAnswers);
}

@end
