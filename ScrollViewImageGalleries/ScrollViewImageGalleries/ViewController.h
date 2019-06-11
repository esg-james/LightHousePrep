//
//  ViewController.h
//  ScrollViewImageGalleries
//
//  Created by James Oliver on 2019-06-10.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageDetailViewController.h"

@interface ViewController : UIViewController <UIScrollViewDelegate>


@property NSArray *myImages;
@property (strong, nonatomic) IBOutlet UIScrollView *myScrollView;
@property UITapGestureRecognizer *myTap;
@property ImageDetailViewController *myDetailVC;

@property (weak, nonatomic) IBOutlet UIPageControl *myPageControl;
- (IBAction)switchDotsOnPageControl:(id)sender;


@end

