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
    self.myScrollView = [[UIScrollView alloc]initWithFrame:scrollRect];
    self.myScrollView.translatesAutoresizingMaskIntoConstraints = NO;
    self.myScrollView.pagingEnabled = YES;
    
    
    UIImage *image1 = [UIImage imageNamed:@"Lighthouse-in-Field.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"Lighthouse-night.jpg"];
    UIImage *image3 = [UIImage imageNamed:@"Lighthouse.jpg"];
    NSArray *myImages = [[NSArray alloc]initWithObjects:image1,image2,image3, nil];
    
    for(int i = 0; i < myImages.count; i++) {
        CGFloat xOrigin = i *self.view.frame.size.width;
        UIImageView *newView = [[UIImageView alloc]initWithFrame:CGRectMake(xOrigin, 0, self.view.frame.size.width, self.view.frame.size.height)];
        newView.image = myImages[i];
        [self.myScrollView addSubview:newView];
        newView.contentMode = UIViewContentModeScaleAspectFit;
    }
    
    self.myScrollView.contentSize = CGSizeMake(self.view.frame.size.width * myImages.count, self.view.frame.size.height);
    [self.view addSubview:self.myScrollView];
    
}


@end
