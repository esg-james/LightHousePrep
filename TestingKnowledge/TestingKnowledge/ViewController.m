//
//  ViewController.m
//  TestingKnowledge
//
//  Created by James Oliver on 2019-06-04.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _curImage = @"parrotsnme";
    
    
    
}


- (IBAction)clickPicButton:(UIButton *)sender {
    UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"parrotsnme.jpg"]];
    imgView.translatesAutoresizingMaskIntoConstraints = NO;
    [imgView setContentMode:UIViewContentModeScaleAspectFit];
    [imgView sizeToFit];
    [self.view addSubview:imgView];
    
    
   
}
@end
