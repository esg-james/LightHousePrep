//
//  NewCityViewController.m
//  TableViewPractice
//
//  Created by James Oliver on 2019-06-12.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "NewCityViewController.h"
#import "CityObject.h"
#import "ViewController.h"




@interface NewCityViewController ()

@property (nonatomic, weak) id  <NewCityDataDelegate>  delegate;
@property CityObject *aCity;
@property NSString *city;



@property (weak, nonatomic) IBOutlet UITextField *theCityTextField;



@end

@implementation NewCityViewController

- (instancetype)init:(CityObject *)newCity {

    self.aCity = _theCityTextField.text;
    return self.aCity;
}

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@end
