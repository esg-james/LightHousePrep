//
//  PanViewController.m
//  Gestures
//
//  Created by James Oliver on 2019-06-06.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController

- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {
    
    
    //Simple way to translate pan gesture
    //   CGPoint locationInView = [sender locationInView:self.view];
    //    sender.view.center = locationInView;
    
    //Using translation in view to get distance between old centre and new centre
    CGPoint translationInView = [sender translationInView:self.view];
    CGPoint oldCentre = sender.view.center;
    CGPoint newCentre = CGPointMake(oldCentre.x + translationInView.x, oldCentre.y + translationInView.y);
    sender.view.center = newCentre;
    [sender setTranslation:CGPointZero inView:self.view];
}



@end
