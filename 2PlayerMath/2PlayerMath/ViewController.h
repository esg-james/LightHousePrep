//
//  ViewController.h
//  2PlayerMath
//
//  Created by James Oliver on 2019-06-03.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *player1ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *player2ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *mathQuestionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UIButton *keyPad0Button;
@property (weak, nonatomic) IBOutlet UIButton *keyPad1Button;
@property (weak, nonatomic) IBOutlet UIButton *keyPad2Button;
@property (weak, nonatomic) IBOutlet UIButton *keyPad3Button;
@property (weak, nonatomic) IBOutlet UIButton *keyPad4Button;
@property (weak, nonatomic) IBOutlet UIButton *keyPad5Button;
@property (weak, nonatomic) IBOutlet UIButton *keyPad6Button;
@property (weak, nonatomic) IBOutlet UIButton *keyPad7Button;
@property (weak, nonatomic) IBOutlet UIButton *keyPad8Button;
@property (weak, nonatomic) IBOutlet UIButton *keyPad9Button;
@property (weak, nonatomic) IBOutlet UIButton *keyPadEnterButton;

@property ScoreKeeper *player1Score;
@property ScoreKeeper *player2Score;
@property QuestionManager *questionManager;
@property QuestionFactory *myFac;
@property Question *q1;

@property NSArray *questionSubclassNames;


- (IBAction)touchKey0Button:(UIButton *)sender;
- (IBAction)touchKey1Button:(UIButton *)sender;
- (IBAction)touchKey2Button:(UIButton *)sender;
- (IBAction)touchKey3Button:(UIButton *)sender;
- (IBAction)touchKey4Button:(UIButton *)sender;
- (IBAction)touchKey5Button:(UIButton *)sender;
- (IBAction)touchKey6Button:(UIButton *)sender;
- (IBAction)touchKey7Button:(UIButton *)sender;
- (IBAction)touchKey8Button:(UIButton *)sender;
- (IBAction)touchKey9Button:(UIButton *)sender;
- (IBAction)touchKeyEnterButton:(UIButton *)sender;


@end

NS_ASSUME_NONNULL_END
