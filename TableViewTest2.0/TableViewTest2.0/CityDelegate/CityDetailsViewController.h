//
//  CityDetailsViewController.h
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CityFormDelegateProtocol.h"
#import "CitiesTableViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CityDetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *cityTextFieldOutlet;
@property (nonatomic, weak) id  <NewCityFormDelegate>  delegate;
@property (strong,nonatomic) CitiesTableViewController *city;
@property (strong,nonatomic) NSString *theCity;

@end

NS_ASSUME_NONNULL_END
