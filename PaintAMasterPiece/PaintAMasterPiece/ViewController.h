//
//  ViewController.h
//  PaintAMasterPiece
//
//  Created by James Oliver on 2019-06-07.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SettingsViewController.h"

@interface ViewController : UIViewController <SettingsViewControllerDelegate> {
    CGPoint lastPoint;
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat brush;
    CGFloat opacity;
    BOOL mouseSwiped;
}

@property (weak, nonatomic) IBOutlet UIImageView *tempDrawImage;
@property (weak, nonatomic) IBOutlet UIImageView *mainImage;

- (IBAction)pencilPressed:(id)sender;
- (IBAction)eraserPressed:(id)sender;

- (IBAction)reset:(id)sender;
- (IBAction)settings:(id)sender;
- (IBAction)save:(id)sender;

@end

