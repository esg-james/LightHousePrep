//
//  ViewController.m
//  PoliceSketch
//
//  Created by Sam Meech-Ward on 2017-10-09.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "LHLViewController.h"
#import "SketchState.h"

@interface LHLViewController ()


@end

@implementation LHLViewController
SketchState *currentState;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    currentState = [[SketchState alloc]init];
    
    
//    // Do any additional setup after loading the view, typically from a nib.
//     _viewB = [UIImage imageNamed:@"eyes_2"];
//     _viewB = [[UIView alloc]initWithFrame:CGRectMake(8, 8, 358, 300)];
//     [self.view addSubview:_viewB];

//    _viewE = [[UIView alloc]initWithFrame:CGRectMake(8, 8, 342, 227)];
//    _viewE.backgroundColor = UIColor.grayColor;
//    [self.view addSubview:_viewE];
//
//    [self.view layoutIfNeeded];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        
//        self.viewA = _viewA;
//        self.viewB = _viewB;
//        self.viewC = _viewC;
//        self.viewC = _viewD;
//        self.viewC = _viewE;
//    }
//    return self;
//}


- (IBAction)ClickedRandomFaceButton:(UIButton *)sender {
    
    [currentState randomFace];
    UIImage *newImage = [UIImage imageNamed:currentState.currentEyes];
    _eyes_image.image = newImage;
    UIImage *newImage2 = [UIImage imageNamed:currentState.currentNose];
    _nose_image.image = newImage2;
    UIImage *newImage3 = [UIImage imageNamed:currentState.currentMouth];
    _mouth_image.image = newImage3;
    
}

- (IBAction)ClickNextEyeButton:(UIButton *)sender {
    
    [currentState nextEyes];
    UIImage *newImage = [UIImage imageNamed:currentState.currentEyes];
    _eyes_image.image = newImage;
    
}
- (IBAction)ClickNextNoseButton:(UIButton *)sender {
    
    [currentState nextNose];
    UIImage *newImage = [UIImage imageNamed:currentState.currentNose];
    _nose_image.image = newImage;
}
- (IBAction)ClickNextMouthButton:(UIButton *)sender {
    
    [currentState nextMouth];
    UIImage *newImage = [UIImage imageNamed:currentState.currentMouth];
    _mouth_image.image = newImage;
}
- (IBAction)ClickPrevEyesButton:(UIButton *)sender {
    
    [currentState previousEyes];
    UIImage *newImage = [UIImage imageNamed:currentState.currentEyes];
    _eyes_image.image = newImage;
}
- (IBAction)ClickPrevNoseButton:(UIButton *)sender {
    
    [currentState previousNose];
    UIImage *newImage = [UIImage imageNamed:currentState.currentNose];
    _nose_image.image = newImage;
}
- (IBAction)ClickPrevMouthButton:(UIButton *)sender {
    
    [currentState previousMouth];
    UIImage *newImage = [UIImage imageNamed:currentState.currentMouth];
    _mouth_image.image = newImage;
}

@end
