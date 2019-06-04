//
//  ViewController.m
//  2PlayerMath
//
//  Created by James Oliver on 2019-06-03.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()


@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.player1Score = [[ScoreKeeper alloc]init];
    self.player1Score.playerNumber = 1;
    self.player2Score = [[ScoreKeeper alloc]init];
    self.player2Score.playerNumber = 2;
    self.questionManager = [[QuestionManager alloc]init];
    self.myFac = [[QuestionFactory alloc]init];
    
    self.mathQuestionLabel = _mathQuestionLabel;
    self.player1ScoreLabel = _player1ScoreLabel;
    self.player2ScoreLabel = _player2ScoreLabel;
    self.myFac = _myFac;
    self.answerLabel = _answerLabel;
    self.q1 = [[Question alloc]init];
    
    
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)touchKey0Button:(UIButton *)sender {
    
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:self.keyPad0Button.titleLabel.text];
    
}

- (IBAction)touchKey1Button:(UIButton *)sender {
    
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:self.keyPad1Button.titleLabel.text];
    
}
- (IBAction)touchKey2Button:(UIButton *)sender {
    
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:self.keyPad2Button.titleLabel.text];
}

- (IBAction)touchKey3Button:(UIButton *)sender {
    
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:self.keyPad3Button.titleLabel.text];
}

- (IBAction)touchKey4Button:(UIButton *)sender {
    
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:self.keyPad4Button.titleLabel.text];
    
}

- (IBAction)touchKey5Button:(UIButton *)sender {
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:self.keyPad5Button.titleLabel.text];
    
}

- (IBAction)touchKey6Button:(UIButton *)sender {
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:self.keyPad6Button.titleLabel.text];
}

- (IBAction)touchKey7Button:(UIButton *)sender {
    
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:self.keyPad7Button.titleLabel.text];
}

- (IBAction)touchKey8Button:(UIButton *)sender {
    
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:self.keyPad8Button.titleLabel.text];
}

- (IBAction)touchKey9Button:(UIButton *)sender {
    
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:self.keyPad9Button.titleLabel.text];
}

- (IBAction)touchKeyEnterButton:(UIButton *)sender {
    
    self.answerLabel.text = @"";
    
    if(self.q1.playerNumber == 1) {
        if([self.answerLabel.text intValue] == self.q1.answer) {
            NSLog(@"You got it!");
            self.player1Score.rightCount++;
            self.player1ScoreLabel.text = [NSString stringWithFormat:@"%d",self.player1Score.rightCount];
        }
        else {
            NSLog(@"WRONGO, BOYO");
            self.player1Score.wrongCount++;
            self.player1ScoreLabel.text = [NSString stringWithFormat:@"%d",self.player1Score.wrongCount];
        }
    }
    else if(self.q1.playerNumber == 2) {
        if([self.answerLabel.text intValue] == self.q1.answer) {
            NSLog(@"You got it!");
            self.player2Score.rightCount++;
            self.player2ScoreLabel.text = [NSString stringWithFormat:@"%d",self.player2Score.rightCount];
        }
        else {
            NSLog(@"WRONGO, BOYO");
            self.player2Score.wrongCount++;
            self.player2ScoreLabel.text = [NSString stringWithFormat:@"%d",self.player2Score.wrongCount];
        }
    }
    

    if(self.q1.playerNumber == 1){
        self.q1.playerNumber++;
    }
    else {
        self.q1.playerNumber = 1;
    }
        self.q1 = [self.myFac generateRandomQuestion];

    [self.q1.question stringByReplacingOccurrencesOfString:@"Player 1" withString:[NSString stringWithFormat:@"Player %ld",(long)self.q1.playerNumber]];
        [self.questionManager.questions addObject:self.q1];
        self.mathQuestionLabel.text = self.q1.question;
    
    
}
@end
