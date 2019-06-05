//
//  ViewController.m
//  blockanims
//
//  Created by James Oliver on 2019-06-04.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}


- (IBAction)performRotate:(id)sender {
    
    [UIView animateWithDuration:1.0 animations:^{
        
        
        CGAffineTransform scaleIt = self.buttonTarget.transform;
        CGAffineTransform scaleItAgain = CGAffineTransformMakeScale(0.1f,2.0f);
        CGAffineTransform scaleItAgainAgain = CGAffineTransformMakeScale(1.0f,3.0f);
        CGAffineTransform newNewNewTrans = CGAffineTransformConcat(scaleItAgainAgain, scaleItAgain);
        
        CGAffineTransformInvert(self.buttonTarget.transform);
        
        CGAffineTransform previousTrans = self.buttonTarget.transform;
        CGAffineTransform newTrans = CGAffineTransformMakeRotation (90.0f * (M_PI / 2.0f));
        CGAffineTransform newNewTrans = CGAffineTransformConcat(previousTrans, newTrans);
        
        
        self.buttonTarget.transform = newNewTrans;
        
        
        
        
    }];
}

@end
