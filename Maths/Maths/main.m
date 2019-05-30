//
//  main.m
//  Maths
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *theScore = [[ScoreKeeper alloc]init];
        QuestionManager *questionManager = [[QuestionManager alloc]init];
        QuestionFactory *myFac = [[QuestionFactory alloc]init];
        BOOL gameOn = YES;
        while(gameOn) {
            Question *q1 = [myFac generateRandomQuestion];
            [questionManager.questions addObject:q1];
            
            NSLog(@"What is the solution to: %@",q1.question);
            
            NSString *userInput = [InputHandler getInputFor:@"Enter the answer: "];
            if([userInput intValue] == [q1 answer]) {
                NSLog(@"You got it!");
                [theScore getScore:YES];
            }
            else {
                NSLog(@"WRONGO, BOYO");
                [theScore getScore:NO];
            }
            [questionManager timeOutput];
            
            
        }
    }
    return 0;
}
