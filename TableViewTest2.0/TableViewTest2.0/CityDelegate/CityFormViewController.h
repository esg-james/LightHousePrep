//
//  CityFormViewController.h
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CityFormDelegateProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface CityFormViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *cityTextField;

@property (nonatomic, weak) id  <NewCityFormDelegate>  delegate;


@end

NS_ASSUME_NONNULL_END
