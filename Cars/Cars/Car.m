//
//  Car.m
//  Cars
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Car.h"

@implementation Car


- (NSString *)description {
    return [NSString stringWithFormat:@"This is a %@",_model];
    return [NSString stringWithFormat:@"This is a %@",_make];
}

- (int) score {
    return _score;
}

- (id)initWithModel:(NSString *)pn : (NSString *)make : (int)score
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
