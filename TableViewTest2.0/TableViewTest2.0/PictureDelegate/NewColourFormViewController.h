//
//  NewColourFormViewController.h
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewColourDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface NewColourFormViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UITextField *rTextField;
@property (weak, nonatomic) IBOutlet UITextField *gTextField;
@property (weak, nonatomic) IBOutlet UITextField *bTextField;

@property (weak,nonatomic) UIColor *theColour;

@property (nonatomic, weak) id  <NewColourDelegate>  delegate;

@end

NS_ASSUME_NONNULL_END
