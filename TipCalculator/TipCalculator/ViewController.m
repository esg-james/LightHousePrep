//
//  ViewController.m
//  TipCalculator
//
//  Created by James Oliver on 2019-06-07.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *calculateTip;
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UISlider *tipPercentageSlider;




@end

@implementation ViewController {
}


- (void)viewDidLoad {
    [super viewDidLoad];

    [self.billAmountTextField setDelegate:self];
    [self.tipPercentageTextField setDelegate:self];
    [self.billAmountTextField setKeyboardType:UIKeyboardTypeDecimalPad];
    [self.tipPercentageTextField setKeyboardType:UIKeyboardTypeNumberPad];
    
    
    self.tipPercentageSlider.minimumValue = 0.0f;
    self.tipPercentageSlider.maximumValue = 100.0f;
    
    
    
    
    [_tipPercentageTextField addTarget:self
                                action:@selector(myDidChange)
                      forControlEvents:UIControlEventEditingChanged];
    
    
    
    
}

-(void)myDidChange
{
    self.tipPercentageSlider.value = [self.tipPercentageTextField.text floatValue];

}

- (IBAction)calculateTip:(UIButton *)sender {
    
    float billAmount = [self.billAmountTextField.text floatValue];
    
    float tipPercentage = [self.tipPercentageTextField.text floatValue];
    
    float tipAmount = billAmount * tipPercentage / 100;
    NSString *tipStringAmount = [NSString stringWithFormat:@"$%.2f",tipAmount];
    self.tipAmountLabel.text = tipStringAmount;
    
    
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789."];
    NSCharacterSet *myFieldSet = [NSCharacterSet characterSetWithCharactersInString:string];
    BOOL stringIsValid = [myCharSet isSupersetOfSet:myFieldSet];
    
    
    
    return stringIsValid;
    
}

//- (void)textFieldDidEndEditing:(UITextField *)textField
//{
//}

- (IBAction)adjustTipPercentage:(UISlider *)sender {

    self.tipPercentageTextField.text = [NSString stringWithFormat:@"%.0f",round(sender.value / 20) * 20];

    self.tipPercentageSlider.value = round(sender.value / 20) * 20;

    
}



@end
