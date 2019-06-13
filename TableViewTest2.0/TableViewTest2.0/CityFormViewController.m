//
//  CityFormViewController.m
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "CityFormViewController.h"
#import "CityFormDelegateProtocol.h"
#import "City.h"

@interface CityFormViewController ()


- (IBAction)cancel:(id)sender;

- (IBAction)done:(id)sender;

@end

@implementation CityFormViewController

/*
 @IBOutlet weak var newCity: UITextField!
 
 @IBAction func cancel(_ sender: UIBarButtonItem) {
 dismiss(animated: true, completion: nil)
 }
 
 @IBAction func saveCity(_ sender: Any) {
 let userEnteredText = newCity.text
 if userEnteredText != nil {
 let newCity = City(name: userEnteredText!)
 delegate?.add(city: newCity)
 }
 dismiss(animated: true, completion: nil)
 }
 
 override func viewDidLoad() {
 super.viewDidLoad()
 }*/

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

- (IBAction)cancel:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)done:(id)sender {
    
    NSString *userInput = self.cityTextField.text;
    if(userInput != nil) {
        
        City *city = [[City alloc]init];
        city.city = self.cityTextField.text;
        [self.delegate addCity:city];
    }
    [self.navigationController popViewControllerAnimated:YES];
}
@end
