//
//  ViewController.h
//  PoliceSketch
//
//  Created by Sam Meech-Ward on 2017-10-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LHLViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *nextEyeButton;
@property (weak, nonatomic) IBOutlet UIButton *nextNoseButton;
@property (weak, nonatomic) IBOutlet UIButton *nextMouthButton;
@property (weak, nonatomic) IBOutlet UIButton *prevEyesButton;
@property (weak, nonatomic) IBOutlet UIButton *prevNoseButton;
@property (weak, nonatomic) IBOutlet UIButton *prevMouthButton;

@property (weak, nonatomic) IBOutlet UIImageView *eyes_image;
@property (weak, nonatomic) IBOutlet UIImageView *nose_image;
@property (weak, nonatomic) IBOutlet UIImageView *mouth_image;



- (IBAction)ClickNextEyeButton:(UIButton *)sender;
- (IBAction)ClickNextNoseButton:(UIButton *)sender;
- (IBAction)ClickNextMouthButton:(UIButton *)sender;
- (IBAction)ClickPrevEyesButton:(UIButton *)sender;
- (IBAction)ClickPrevNoseButton:(UIButton *)sender;
- (IBAction)ClickPrevMouthButton:(UIButton *)sender;


@property (nonatomic, strong) UIView *viewB;

//initwithframe
//initwithcoder



@end

