//
//  ImageDetailViewController.m
//  ScrollViewImageGalleries
//
//  Created by James Oliver on 2019-06-10.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ImageDetailViewController.h"

@interface ImageDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *theView;
@property (weak, nonatomic) IBOutlet UIScrollView *theScrollView;

@end

@implementation ImageDetailViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    

//    self.myScrollView.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    self.theView.image = self.thisImage;
    
    self.theScrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
    self.theScrollView.contentMode = UIViewContentModeScaleAspectFit;
    
    self.theScrollView.minimumZoomScale = 0.1;
    self.theScrollView.maximumZoomScale = 10.0;
    
    [self.theScrollView setDelegate:self];
    
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.theView;
}

@end
