//
//  CityDetailsViewController.m
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "CityDetailsViewController.h"
#import "City.h"

@interface CityDetailsViewController ()
- (IBAction)save:(id)sender;


@property City *incomingCity;

@end

@implementation CityDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.cityTextFieldOutlet.text = self.theCity;
    
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

- (IBAction)save:(id)sender {
    
    NSString *userInput = self.cityTextFieldOutlet.text;
    if(userInput != nil) {
        
        City *city = [[City alloc]init];
        city.city = userInput;
        [self.delegate editCity:city];
    }
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
