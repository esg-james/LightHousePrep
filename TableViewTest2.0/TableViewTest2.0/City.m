//
//  City.m
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)init:(NSString *)cityName
{
    self = [super init];
    if (self) {
        self.city = cityName;
    }
    return self;
}

@end
