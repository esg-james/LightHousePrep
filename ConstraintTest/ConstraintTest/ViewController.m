//
//  ViewController.m
//  ConstraintTest
//
//  Created by James Oliver on 2019-06-09.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    CGRect frame2 = CGRectMake(0, 0, 150.0, 100.0);
//    CGRect frame3 = CGRectMake(0, 100.0, 150.0, 100.0);
//    UIView *prevView = [[UIView alloc]initWithFrame:frame2];
//    UIView *nextView = [[UIView alloc]initWithFrame:frame3];
//    prevView.backgroundColor = [UIColor blueColor];
//    nextView.backgroundColor = [UIColor yellowColor];
//
//
//    CGRect frame = CGRectMake(80.0, 100.0, 150.0, 240.0);
//    UIScrollView *theView = [[UIScrollView alloc]initWithFrame:frame];
//    theView.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:theView];
//
//    [theView addSubview:prevView];
//    [theView addSubview:nextView];
    
}

-(IBAction)buttonTapped:(UIButton *)sender {
    if([[sender titleForState:UIControlStateNormal] isEqualToString:@"X"]) {
        [sender setTitle:@"A very long title for this button" forState:UIControlStateNormal];
    }
    else {
        [sender setTitle:@"X" forState:UIControlStateNormal];
    }
}


@end
