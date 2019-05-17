//
//  Bicycle.m
//  Inheritance
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Bicycle.h"

@implementation Bicycle



-(NSString *)description {
    if (self.hasBasket) {
        return [NSString stringWithFormat:@"traveling at %f miles per hour with a basket", self.currentSpeed];
    }
    return [super description];
}

-(void)makeNoise {
    //
    NSLog(@"Ding Dong");
}

@end
