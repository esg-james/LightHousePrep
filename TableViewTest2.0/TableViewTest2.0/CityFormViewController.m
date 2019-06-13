//
//  CityFormViewController.m
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "CityFormViewController.h"
#import "CityFormDelegateProtocol.h"

@interface CityFormViewController ()

@property (nonatomic, weak) id  <NewCityFormDelegate>  delegate;

@end

@implementation CityFormViewController

/*var delegate: NewCityFormDelegate?
 
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

@end
