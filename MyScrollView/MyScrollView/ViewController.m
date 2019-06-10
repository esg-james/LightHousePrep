//
//  ViewController.m
//  MyScrollView
//
//  Created by James Oliver on 2019-06-10.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property MyScrollView *myScrollView;
@property UIPanGestureRecognizer *myPan;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    CGRect scrollRect = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    _myScrollView = [[MyScrollView alloc]initWithFrame:scrollRect];
    [self.view addSubview:_myScrollView];
    

    //content size is the whole image
    //content offset is where we are currently viewing

    CGRect redFrame = CGRectMake(20, 20, 100.0, 100.0);
    UIView *redView = [[UIView alloc]initWithFrame:redFrame];
    redView.backgroundColor = [UIColor redColor];
    [_myScrollView addSubview:redView];
    CGRect greenFrame = CGRectMake(150, 150, 150.0, 200.0);
    UIView *greenView = [[UIView alloc]initWithFrame:greenFrame];
    greenView.backgroundColor = [UIColor greenColor];
    [_myScrollView addSubview:greenView];
    CGRect blueFrame = CGRectMake(40,400, 200.0, 150.0);
    UIView *blueView = [[UIView alloc]initWithFrame:blueFrame];
    blueView.backgroundColor = [UIColor blueColor];
    [_myScrollView addSubview:blueView];
    CGRect yellowFrame = CGRectMake(100,+ 600, 180.0, 150.0);
    UIView *yellowView = [[UIView alloc]initWithFrame:yellowFrame];
    yellowView.backgroundColor = [UIColor yellowColor];
    [_myScrollView addSubview:yellowView];

    _myPan = [[UIPanGestureRecognizer alloc]initWithTarget:_myScrollView action:@selector(myPanGestureRecognizer:)];
    _myScrollView.userInteractionEnabled = YES;
    [_myScrollView addGestureRecognizer:_myPan];
    
    
    
//    UIScrollView *scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    NSInteger viewcount= 4;
//    for(int i = 0; i< viewcount; i++) {
//
//        CGFloat y = i * self.view.frame.size.height;
//        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, y,self.view.frame.size.width, self .view.frame.size.height)];
//        view.backgroundColor = [UIColor greenColor];
//        [scrollview addSubview:view];
//    }
//    scrollview.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height *viewcount);
//    [self.view addSubview:scrollview];
   
    
//    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    scrollView.pagingEnabled = YES;
//
//
//    NSInteger numberOfViews = 5;
//    for (int i = 0; i < numberOfViews; i++) {
//        CGFloat xOrigin = i * self.view.frame.size.width;
//        UIView *awesomeView = [[UIView alloc] initWithFrame:CGRectMake(xOrigin, 0, self.view.frame.size.width, self.view.frame.size.height)];
//        awesomeView.backgroundColor = [UIColor colorWithRed:0.5/i green:0.5 / i blue:0.5 alpha:1];
//        [scrollView addSubview:awesomeView];
//    }
//    scrollView.contentSize = CGSizeMake(self.view.frame.size.width * numberOfViews, self.view.frame.size.height);
//    [self.view addSubview:scrollView];
    
    

}


- (void)viewDidAppear:(BOOL)animated {
    
    

}


@end
