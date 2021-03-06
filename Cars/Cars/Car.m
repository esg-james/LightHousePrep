//
//  Car.m
//  Cars
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Car.h"

@implementation Car


- (void)drive {
    NSLog(@"This is the new %@ %@",_make,_model);
}

- (int) speed {
    return _speed;
}

- (id)initWithModel:(NSString *)pn : (NSString *)make
{
    //OPEN a connection to a DB
    
    self = [super init];
    if (self) {
        _model = pn;
        _make = make;
    }
    return self;
}

@end
