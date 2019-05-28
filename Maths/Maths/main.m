//
//  main.m
//  Maths
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *theScore = [[ScoreKeeper alloc]init];
        BOOL gameOn = YES;
        while(gameOn) {
            AdditionQuestion *q1 = [[AdditionQuestion alloc]init];
            NSLog(@"What is the sum of %@",[q1 question]);
            NSString *userInput = [InputHandler getInputFor:@"Enter the answer: "];
            
            if([userInput intValue] == [q1 answer]) {
                NSLog(@"You got it!");
                [theScore getScore:YES];
            }
            else {
                NSLog(@"WRONGO, BOYO");
                [theScore getScore:NO];
            }
           // [theScore rightAnswers];
            
            
        }
    }
    return 0;
}
