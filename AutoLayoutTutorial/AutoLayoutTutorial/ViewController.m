//
//  ViewController.m
//  AutoLayoutTutorial
//
//  Created by James Oliver on 2019-06-08.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *topLeftView;
@property (weak, nonatomic) IBOutlet UIView *topRightView;
@property (weak, nonatomic) IBOutlet UIView *bottomView;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//- (void)viewWillLayoutSubviews {
//
//    
//    //potential issue with deprecated features
//    if(UIInterfaceOrientationIsLandscape(self.interfaceOrientation)) {
//
//        CGRect rect = self.topLeftView.frame;
//        rect.size.width = 254;
//        rect.size.height = 130;
//        self.topLeftView.frame = rect;
//
//        rect = self.topRightView.frame;
//        rect.origin.x = 294;
//        rect.size.width = 254;
//        rect.size.height = 130;
//        self.topRightView.frame = rect;
//
//        rect = self.bottomView.frame;
//        rect.origin.y = 170;
//        rect.size.width = 528;
//        rect.size.height = 130;
//        self.bottomView.frame = rect;
//
//    }
//    else {
//        CGRect rect = self.topLeftView.frame;
//        rect.size.width = 130;
//        rect.size.height = 254;
//        self.topLeftView.frame = rect;
//
//        rect = self.topRightView.frame;
//        rect.origin.x = 170;
//        rect.size.width = 130;
//        rect.size.height = 254;
//        self.topRightView.frame = rect;
//
//        rect = self.bottomView.frame;
//        rect.origin.y = 295;
//        rect.size.width = 280;
//        rect.size.height = 254;
//        self.bottomView.frame = rect;
//    }
//
//}


@end
