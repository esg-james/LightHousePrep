//
//  ViewController.h
//  2PlayerMathRedo
//
//  Created by James Oliver on 2019-06-08.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Question.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "Player.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *p1ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *p2ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *p1Wrong;
@property (weak, nonatomic) IBOutlet UILabel *p2Wrong;

@property (weak, nonatomic) IBOutlet UILabel *playerQuestionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;


@property Player *player1;
@property Player *player2;
@property QuestionManager *questionManager;
@property QuestionFactory *myFac;
@property Question *q1;

- (IBAction)keyPadButton:(id)sender;





@end

