//
//  ImageDetailViewController.m
//  ScrollViewImageGalleries
//
//  Created by James Oliver on 2019-06-10.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ImageDetailViewController.h"

@interface ImageDetailViewController ()

@end

@implementation ImageDetailViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    CGRect scrollRect = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    self.myScrollView = [[UIScrollView alloc]initWithFrame:scrollRect];
    self.myScrollView.translatesAutoresizingMaskIntoConstraints = NO;
    
    UIImage *image1 = [UIImage imageNamed:@"Lighthouse.jpg"];
    self.theView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.theView.image = image1;
    
    self.myScrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:self.myScrollView];
    self.myScrollView.contentMode = UIViewContentModeScaleAspectFit;
    [self.myScrollView addSubview:self.theView];
    
    self.myScrollView.minimumZoomScale = 0.1;
    self.myScrollView.maximumZoomScale = 1.0;
    
    [self.myScrollView setDelegate:self];
    
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    
    return self.theView;
}

@end
