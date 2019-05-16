//
//  Vehicle.m
//  Inheritance
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

-(NSString *)description {
    return [NSString stringWithFormat:@"traveling at %f miles per hour", self.currentSpeed];
}

@end
