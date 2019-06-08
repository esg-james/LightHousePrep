//
//  ViewController.m
//  GestureSwipePractice
//
//  Created by James Oliver on 2019-06-07.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIView *redView;
@property UIView *yellowView;

@end

@implementation ViewController {
    CGPoint redCenter;
    CGPoint redFrame;
    CGPoint yellowFrame;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    redFrame = CGRectMake(0, 0, 300.0, 300.0);
//    redCenter = self.view.center;
//    self.redView.backgroundColor = [UIColor redColor];
//    self.redView.frame = CGRectMake(0, 0, 300.0, 300.0);
//    self.redView.center = self.view.center;
//    self.redView.userInteractionEnabled = YES;
//    [self.view addSubview:self.redView];
//    
//    self.redView.backgroundColor = [UIColor redColor];
//    self.redView.frame = CGRectMake(0, 0, 200.0, 200.0);
//    self.redView.center = self.view.center;
//    self.redView.userInteractionEnabled = YES;
//    [self.view addSubview:self.redView];
//
//    UISwipeGestureRecognizer *mySwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipedMethod)];
//    [self.view addGestureRecognizer:mySwipe];
//
//}
//
//- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    UITouch *myTouch = [[touches allObjects]objectAtIndex:0];
//    
//    CGPoint touchInRed = [myTouch locationInView:self.redView];;
//    CGPoint touchInSelf = [myTouch locationInView:self.view];
//    CGPoint distVec CGPointMake(_red , CGFloat y);
//    
//    self.redView.center = [myTouch locationInView:self.view];
//
    
}


@end
