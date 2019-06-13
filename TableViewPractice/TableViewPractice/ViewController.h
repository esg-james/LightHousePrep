//
//  ViewController.h
//  TableViewPractice
//
//  Created by James Oliver on 2019-06-12.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NewCityDataDelegate <NSObject>

-(void)handleNewData : (NSString *)city;

@end

@interface ViewController : UIViewController

@end

