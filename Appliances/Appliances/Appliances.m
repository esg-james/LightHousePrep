//
//  Appliances.m
//  Appliances
//
//  Created by James Oliver on 2019-05-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Appliances.h"

@implementation Appliances

@synthesize voltage;

-(id) init {
    return [self initWithProductName:@"Uknown"];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %d volts",productName,voltage];
}

-(id)initWithProductName:(NSString *)pn{
    self = [super init];
    if(self){
        //[self setProductName:pn];
        productName = [pn copy];
        voltage = 120;
    }
    return self;
}
-(void)setVoltage:(int)x {
    NSLog(@"setting voltage to %d",x);
    voltage = x;
}

@end
