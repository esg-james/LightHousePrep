//
//  CityFormDelegateProtocol.h
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "City.h"

NS_ASSUME_NONNULL_BEGIN
@protocol NewCityFormDelegate <NSObject>

-(void)addCity:(City *)city;

@end
NS_ASSUME_NONNULL_END
