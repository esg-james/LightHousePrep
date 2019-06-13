//
//  CityObject.m
//  TableViewPractice
//
//  Created by James Oliver on 2019-06-12.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "CityObject.h"

@implementation CityObject

- (instancetype)init:(NSString *)theCity
{
    self = [super init];
    if (self) {
        self.city = theCity;
    }
    return self;
}

@end
