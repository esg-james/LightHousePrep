//
//  MultiplicationTableBuilder.m
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-26.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "MultiplicationTableBuilder.h"

@implementation MultiplicationTableBuilder

-(instancetype)initWithMaxValue:(int)thisValue {
    self = [super init];
    if (self) {
        _myInt = thisValue;
    }
    return self;
}

+ (NSString *)drawTable:(int)maxValue {
    maxValue = 20;
    NSString *s = @"";
    for(NSUInteger i = 0; i < maxValue; i++) {
        s = [s stringByAppendingString:@"|__|"];
        if(i > 10){
            s = [s stringByAppendingString:@"\n"];
        }
    }
    s = [s stringByReplacingOccurrencesOfString:@"__" withString:@"2"];
    return s;
}

@end
