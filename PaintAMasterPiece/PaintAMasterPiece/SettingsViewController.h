//
//  SettingsViewController.h
//  PaintAMasterPiece
//
//  Created by James Oliver on 2019-06-07.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SettingsViewControllerDelegate <NSObject>
- (void)closeSettings:(id _Nullable )sender;
@end

NS_ASSUME_NONNULL_BEGIN

@interface SettingsViewController : UIViewController

@property (nonatomic, weak) id<SettingsViewControllerDelegate> delegate;

@property CGFloat brush;
@property CGFloat opacity;

- (IBAction)closeSettings:(id)sender;

@property (weak, nonatomic) IBOutlet UISlider *brushControl;
@property (weak, nonatomic) IBOutlet UISlider *opacityControl;

@property (weak, nonatomic) IBOutlet UIImageView *brushPreview;
@property (weak, nonatomic) IBOutlet UIImageView *opacityPreview;

@property (weak, nonatomic) IBOutlet UILabel *brushValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *opacityValueLabel;
- (IBAction)sliderChanged:(id)sender;

@property (weak, nonatomic) IBOutlet UISlider *redControl;
@property (weak, nonatomic) IBOutlet UISlider *greenControl;
@property (weak, nonatomic) IBOutlet UISlider *blueControl;
@property (weak, nonatomic) IBOutlet UILabel *redLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueLabel;

@property CGFloat red;
@property CGFloat green;
@property CGFloat blue;


@end

NS_ASSUME_NONNULL_END
