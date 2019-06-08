//
//  ViewController.m
//  BillSplitter
//
//  Created by James Oliver on 2019-06-08.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *totalAmount;
@property (weak, nonatomic) IBOutlet UISlider *amountOfPeopleSplitting;
@property (weak, nonatomic) IBOutlet UILabel *eachPersonPays;
- (IBAction)calculateSplitAmount:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *peoplePaying;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.totalAmount setDelegate:self];
    [self.totalAmount addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    
    
}


- (IBAction)calculateSplitAmount:(id)sender {
    
    float billAmount = [self.totalAmount.text floatValue];
    float finalAmount = billAmount / self.amountOfPeopleSplitting.value;
    self.eachPersonPays.text = [NSString stringWithFormat:@"%.2f",finalAmount];
    
    
    
}

- (IBAction)amountOfPeopleSplitting:(id)sender {
    
    self.amountOfPeopleSplitting.value = round(self.amountOfPeopleSplitting.value / 1) * 1;
    self.peoplePaying.text = [NSString stringWithFormat:@"%.f",self.amountOfPeopleSplitting.value];
    [self autoUpdateSplitAmount];
    
}

-(void)textFieldDidChange: (UITextField *)sender {
    
    [self autoUpdateSplitAmount];
    
}

-(void)autoUpdateSplitAmount {
    float billAmount = [self.totalAmount.text floatValue];
    float finalAmount = billAmount / self.amountOfPeopleSplitting.value;
    self.tipLabel.text = [NSString stringWithFormat:@"15%% Tip: %.2f",finalAmount * 0.15];
    self.eachPersonPays.text = [NSString stringWithFormat:@"%.2f",finalAmount];
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {

    NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789."];
    NSCharacterSet *myFieldSet = [NSCharacterSet characterSetWithCharactersInString:string];
    BOOL stringIsValid = [myCharSet isSupersetOfSet:myFieldSet];



    return stringIsValid;

}



@end
