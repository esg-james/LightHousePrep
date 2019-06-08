//
//  ViewController.m
//  2PlayerMathRedo
//
//  Created by James Oliver on 2019-06-08.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    int whosPlaying;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    whosPlaying = 1;
    self.player1 = [[Player alloc]init];
    self.player1.playerNumber = 1;
    self.player2 = [[Player alloc]init];
    self.player2.playerNumber = 2;
    self.questionManager = [[QuestionManager alloc]init];
    self.myFac = [[QuestionFactory alloc]init];
    
    self.playerQuestionLabel = _playerQuestionLabel;
    self.p1ScoreLabel = _p1ScoreLabel;
    self.p2ScoreLabel = _p2ScoreLabel;
    self.p1Wrong = _p1Wrong;
    self.p2Wrong = _p2Wrong;
    self.myFac = _myFac;
    self.answerLabel = _answerLabel;
    self.q1 = [[Question alloc]init];
    
    [self newQuestion];
    
}


- (IBAction)keyPadButton:(id)sender {
    
    UIButton * PressedButton = (UIButton*)sender;
    
    
    //using tags on buttons to switch states
    switch(PressedButton.tag)
    {
        case 0:
            self.answerLabel.text = [self.answerLabel.text stringByAppendingString:PressedButton.titleLabel.text];
            break;
        case 1:
            self.answerLabel.text = [self.answerLabel.text stringByAppendingString:PressedButton.titleLabel.text];
            break;
        case 2:
            self.answerLabel.text = [self.answerLabel.text stringByAppendingString:PressedButton.titleLabel.text];
            break;
        case 3:
            self.answerLabel.text = [self.answerLabel.text stringByAppendingString:PressedButton.titleLabel.text];
            break;
        case 4:
            self.answerLabel.text = [self.answerLabel.text stringByAppendingString:PressedButton.titleLabel.text];
            break;
        case 5:
            self.answerLabel.text = [self.answerLabel.text stringByAppendingString:PressedButton.titleLabel.text];
            break;
        case 6:
            self.answerLabel.text = [self.answerLabel.text stringByAppendingString:PressedButton.titleLabel.text];
            break;
        case 7:
            self.answerLabel.text = [self.answerLabel.text stringByAppendingString:PressedButton.titleLabel.text];
            break;
        case 8:
            self.answerLabel.text = [self.answerLabel.text stringByAppendingString:PressedButton.titleLabel.text];
            break;
        case 9:
            self.answerLabel.text = [self.answerLabel.text stringByAppendingString:PressedButton.titleLabel.text];
            break;
        case 10:
            [self checkAnswer];
            self.answerLabel.text = @"";
            [self switchPlayer];
            [self newQuestion];
            break;
        case 11:
            self.answerLabel.text = [self.answerLabel.text stringByAppendingString:PressedButton.titleLabel.text];
            break;
        case 12:
            self.answerLabel.text = [self.answerLabel.text stringByAppendingString:PressedButton.titleLabel.text];
            break;
        case 13:
            self.answerLabel.text = @"";
            break;
            
    }
    
}
//move this
-(NSString *)playerPlaying {
    
    NSString *thePlayer;
    switch (whosPlaying) {
        case 1:
            thePlayer = @"Player 1: ";
            break;
        case 2:
            thePlayer = @"Player 2: ";
            break;
            
        default:
            break;
    }
    return thePlayer;
    
}

-(void)newQuestion {
    
    
    self.q1 = [self.myFac generateRandomQuestion];
    [self.questionManager.questions addObject:self.q1];
    NSString *formattedQuestion = [NSString stringWithFormat:@"%@ %@",[self playerPlaying],self.q1.question];
    self.playerQuestionLabel.text = formattedQuestion;
    
    
}

//move this
-(void)switchPlayer {
    if(whosPlaying == 1) {
        whosPlaying = 2;
    }
    else {
        whosPlaying = 1;
    }
}
//maybe move this, but refactor method to take players answer and then check it internally, and pass in self.answerLabel.text and check against self.q1.answer
-(void)checkAnswer {
    if(whosPlaying == 1) {
        if([self.answerLabel.text intValue] == self.q1.answer) {
            
            [self.player1 getScore:YES];
            self.p1ScoreLabel.text = [NSString stringWithFormat:@"P1 Right: %d",self.player1.rightCount];
            
        }
        else {
            
            [self.player1 getScore:NO];
            self.p1Wrong.text = [NSString stringWithFormat:@"P1 Wrong: %d",self.player1.wrongCount];

        }
    }
    else {
        if([self.answerLabel.text intValue] == self.q1.answer) {
            
            [self.player2 getScore:YES];
            self.p2ScoreLabel.text = [NSString stringWithFormat:@"P2 Right: %d",self.player2.rightCount];
            
        }
        else {
            
            [self.player2 getScore:NO];
            self.p2Wrong.text = [NSString stringWithFormat:@"P1 Wrong: %d",self.player2.wrongCount];
            
        }
        
    }
    
    
}

@end
