//
//  TapViewController.m
//  Gestures
//
//  Created by James Oliver on 2019-06-06.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width / 2, CGRectGetMidY(self.view.bounds) - height / 2, width, height);
    
    UIView *view = [[UIView alloc]initWithFrame:frame];
    view.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:view];
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapFrom:)];
    
    [view addGestureRecognizer:tapGestureRecognizer];
}

- (void) handleTapFrom: (UITapGestureRecognizer *)recognizer
{
    UIColor *purple = [UIColor purpleColor];
    if([recognizer.view.backgroundColor isEqual:purple]) {
        recognizer.view.backgroundColor = [UIColor blackColor];
        
    }
}

@end
