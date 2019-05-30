//
//  MathUtility.m
//  Methods
//
//  Created by James Oliver on 2019-05-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "MathUtility.h"

@implementation MathUtility

-(int)timesTen:(int)number {
    NSLog(@"You passed in the value %i",number);
    return number * 10;
}

-(int)addNumber:(int)a toNumber:(int)b {
    return a + b;
}

@end
