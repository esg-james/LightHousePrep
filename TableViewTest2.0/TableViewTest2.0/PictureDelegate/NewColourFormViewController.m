//
//  NewColourFormViewController.m
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "NewColourFormViewController.h"

@interface NewColourFormViewController ()

- (IBAction)setColourButton:(id)sender;

- (IBAction)done:(id)sender;

@end

@implementation NewColourFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)setColourButton:(id)sender {
    
    self.theColour = [UIColor colorWithRed:[self.rTextField.text intValue]/255.0 green:[self.gTextField.text intValue]/255.0 blue:[self.bTextField.text intValue]/255.0 alpha:1.0];
    
    self.colorView.backgroundColor = self.theColour;
    
}

- (IBAction)done:(id)sender {
    
    
    
}
@end
