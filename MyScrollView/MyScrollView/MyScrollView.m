//
//  MyScrollView.m
//  MyScrollView
//
//  Created by James Oliver on 2019-06-10.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView



-(void)myPanGestureRecognizer:(UIPanGestureRecognizer *)sender {
    
    CGPoint translationInView = [sender translationInView:self];
    CGPoint oldCentre = sender.view.center;
    CGPoint newCentre = CGPointMake(oldCentre.x, oldCentre.y + translationInView.y);
    sender.view.center = newCentre;
    [sender setTranslation:CGPointZero inView:self];
    
}

@end
