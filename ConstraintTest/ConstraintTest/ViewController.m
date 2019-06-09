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
