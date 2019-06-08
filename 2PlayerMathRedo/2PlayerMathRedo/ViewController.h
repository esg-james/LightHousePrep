//
//  ViewController.h
//  2PlayerMathRedo
//
//  Created by James Oliver on 2019-06-08.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *p1ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *p2ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerQuestionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

- (IBAction)keyPadButton:(id)sender;





@end

