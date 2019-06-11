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
    self.myScrollView.userInteractionEnabled = YES;
    [self.myScrollView setDelegate:self];
    
    
    UIImage *image1 = [UIImage imageNamed:@"Lighthouse-in-Field.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"Lighthouse-night.jpg"];
    UIImage *image3 = [UIImage imageNamed:@"Lighthouse.jpg"];
    self.myImages = [[NSArray alloc]initWithObjects:image1,image2,image3, nil];
    
    self.myPageControl.numberOfPages = self.myImages.count;
    
    
    for(int i = 0; i < self.myImages.count; i++) {
        CGFloat xOrigin = i *self.view.frame.size.width;
        UIImageView *newView = [[UIImageView alloc]initWithFrame:CGRectMake(xOrigin, 0, self.view.frame.size.width, self.view.frame.size.height)];
        newView.image = self.myImages[i];
        [self.myScrollView addSubview:newView];
        newView.contentMode = UIViewContentModeScaleAspectFit;
        
    }
    
    self.myScrollView.contentSize = CGSizeMake(self.view.frame.size.width * self.myImages.count, self.view.frame.size.height);
    [self.view addSubview:self.myScrollView];
    
    
    UIBarButtonItem *runAway = [[UIBarButtonItem alloc]
                                initWithTitle: @"Get out"
                                style: UIBarButtonItemStylePlain
                                target: self
                                action: @selector(exitTheHouse)];
    self.navigationItem.rightBarButtonItem = runAway;
    
    self.myTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(goToRoom)];
    [self.myScrollView  addGestureRecognizer:self.myTap];
    
    
    
    
}

-(void)goToRoom {
    UIStoryboard *main = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.myDetailVC = [main instantiateViewControllerWithIdentifier:@"detailImageView"];
    int test = (self.myScrollView.bounds.origin.x / self.view.frame.size.width);
    self.myDetailVC.thisImage = self.myImages[test];
    [self.navigationController pushViewController:self.myDetailVC animated:NO];

    
}

-(void)exitTheHouse {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    
    self.myPageControl.currentPage = (self.myScrollView.bounds.origin.x / self.view.frame.size.width);
}



@end
