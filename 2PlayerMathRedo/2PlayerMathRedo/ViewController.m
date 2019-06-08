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

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
            self.answerLabel.text = [self.answerLabel.text stringByAppendingString:PressedButton.titleLabel.text];
            break;
    }
    
}
@end
