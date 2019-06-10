//
//  ViewController.m
//  ScrollViewImageGalleries
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
    
    
    
    
    CGRect scrollRect = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    _myScrollView = [[UIScrollView alloc]initWithFrame:scrollRect];
    _myScrollView.translatesAutoresizingMaskIntoConstraints = NO;
    _myScrollView.pagingEnabled = YES;
    
    UIImage *image1 = [UIImage imageNamed:@"Lighthouse-in-Field.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"Lighthouse-night.jpg"];
    UIImage *image3 = [UIImage imageNamed:@"Lighthouse.jpg"];
    NSArray *myImages = [[NSArray alloc]initWithObjects:image1,image2,image3, nil];
    
    for(int i = 0; i < myImages.count; i++) {
        CGFloat xOrigin = i *self.view.frame.size.width;
        UIImageView *newView = [[UIImageView alloc]initWithFrame:CGRectMake(xOrigin, 0, self.view.frame.size.width, self.view.frame.size.height)];
        newView.image = myImages[i];
        [_myScrollView addSubview:newView];
        newView.contentMode = UIViewContentModeScaleAspectFit;
    }
    
    _myScrollView.contentSize = CGSizeMake(self.view.frame.size.width * myImages.count, self.view.frame.size.height);
    [self.view addSubview:_myScrollView];
    
    
    
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


@end
