//
//  ViewController.h
//  TestingKnowledge
//
//  Created by James Oliver on 2019-06-04.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *picButton;
- (IBAction)clickPicButton:(UIButton *)sender;

@property (nonatomic, strong) NSString *curImage;

@end

