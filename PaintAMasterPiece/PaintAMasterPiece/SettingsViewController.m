//
//  SettingsViewController.m
//  PaintAMasterPiece
//
//  Created by James Oliver on 2019-06-07.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)closeSettings:(id)sender {
    
    [self.delegate closeSettings:self];
    
}
- (IBAction)sliderChanged:(id)sender {

    UISlider *changedSlider = (UISlider *)sender;
    
    if(changedSlider == self.brushControl) {
        
        self.brush = self.brushControl.value;
        self.brushValueLabel.text = [NSString stringWithFormat:@"%.1f", self.brush];
        
    } else if (changedSlider == self.brushControl) {
        
        self.brush = self.brushControl.value;
        self.brushValueLabel.text = [NSString stringWithFormat:@"%.1f", self.opacity];
        
    } else if(changedSlider == self.redControl) {
        
        self.red = self.redControl.value/255.0;
        self.redLabel.text = [NSString stringWithFormat:@"Red: %d", (int)self.redControl.value];
        
    } else if(changedSlider == self.greenControl){
        
        self.green = self.greenControl.value/255.0;
        self.greenLabel.text = [NSString stringWithFormat:@"Green: %d", (int)self.greenControl.value];
    } else if (changedSlider == self.blueControl){
        
        self.blue = self.blueControl.value/255.0;
        self.blueLabel.text = [NSString stringWithFormat:@"Blue: %d", (int)self.blueControl.value];
        
    }

    
    UIGraphicsBeginImageContext(self.brushPreview.frame.size);
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
    CGContextSetLineWidth(UIGraphicsGetCurrentContext(), self.brush);
    CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 0.0, 0.0, 0.0, 1.0);
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), 45.0, 45.0);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), 45.0, 45.0);
    CGContextStrokePath(UIGraphicsGetCurrentContext());
    self.brushPreview.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIGraphicsBeginImageContext(self.opacityPreview.frame.size);
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
    CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 20.0);
    CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 0.0, 0.0, 0.0, self.opacity);
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), 45.0, 45.0);
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), 45.0, 45.0);
    CGContextStrokePath(UIGraphicsGetCurrentContext());
    self.opacityPreview.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    int redIntValue = self.red * 255;
    self.redControl.value = redIntValue;
    [self sliderChanged:self.redControl];
    int greenIntValue = self.green * 255;
    self.greenControl.value = greenIntValue;
    [self sliderChanged:self.greenControl];
    int blueIntValue = self.blue * 255;
    self.blueControl.value = blueIntValue;
    [self sliderChanged:self.blueControl];
    
    self.brushControl.value = self.brush;
    [self sliderChanged:self.brushControl];
    self.opacityControl.value = self.opacity;
    [self sliderChanged:self.opacityControl];
    
    
}
@end
