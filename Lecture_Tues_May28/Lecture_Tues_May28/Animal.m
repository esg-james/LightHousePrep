//
//  Animal.m
//  Lecture_Tues_May28
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (instancetype)init
{
    self = [super init];
    if (self) {
        _species = @"Butt";
    }
    return self;
}

-(NSString *)description {
    return @"butt";
}

@end
