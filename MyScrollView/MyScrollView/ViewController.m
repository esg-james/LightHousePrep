//
//  ViewController.m
//  MyScrollView
//
//  Created by James Oliver on 2019-06-10.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
//    CGRect scrollRect = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
//    UIView *myView = [[UIView alloc]initWithFrame:scrollRect];
//    myView.backgroundColor = [UIColor orangeColor];
//    [self.view addSubview:myView];
//
//    //content size is the whole image
//    //content offset is where we are currently viewing
//
//    CGRect redFrame = CGRectMake(self.view.frame.origin.x + 20, self.view.frame.origin.y + 20, 100.0, 100.0);
//    CGRect greenFrame = CGRectMake(self.view.frame.origin.x + 150, self.view.frame.origin.y + 150, 150.0, 200.0);
//    CGRect blueFrame = CGRectMake(self.view.frame.origin.x + 40, self.view.frame.origin.y + 400, 200.0, 150.0);
//    CGRect yellowFrame = CGRectMake(self.view.frame.origin.x + 100, self.view.frame.origin.y + 600, 180.0, 150.0);
//    UIView *redView = [[UIView alloc]initWithFrame:redFrame];
//    UIView *greenView = [[UIView alloc]initWithFrame:greenFrame];
//    UIView *blueView = [[UIView alloc]initWithFrame:blueFrame];
//    UIView *yellowView = [[UIView alloc]initWithFrame:yellowFrame];
//    redView.backgroundColor = [UIColor redColor];
//    greenView.backgroundColor = [UIColor greenColor];
//    blueView.backgroundColor = [UIColor blueColor];
//    yellowView.backgroundColor = [UIColor yellowColor];
//
//    [myView addSubview:redView];
//    [myView addSubview:greenView];
//    [myView addSubview:blueView];
//    [myView addSubview:yellowView];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    scrollView.pagingEnabled = YES;
    
    
    NSInteger numberOfViews = 5;
    for (int i = 0; i < numberOfViews; i++) {
        CGFloat xOrigin = i * self.view.frame.size.width;
        UIView *awesomeView = [[UIView alloc] initWithFrame:CGRectMake(xOrigin, 0, self.view.frame.size.width, self.view.frame.size.height)];
        awesomeView.backgroundColor = [UIColor colorWithRed:0.5/i green:0.5 / i blue:0.5 alpha:1];
        [scrollView addSubview:awesomeView];
    }
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width * numberOfViews, self.view.frame.size.height);
    [self.view addSubview:scrollView];
    
    

}


- (void)viewDidAppear:(BOOL)animated {
    
    CGRect frame = self.view.bounds;
    frame.size.height += 200.0f;

    self.view.bounds = frame;

}


@end
