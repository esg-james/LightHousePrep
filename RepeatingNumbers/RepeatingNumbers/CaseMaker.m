//
//  CaseMaker.m
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-25.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "CaseMaker.h"

@implementation CaseMaker

-(instancetype)initWithString:(NSString *)string {
    
    self = [self initWithString:@""];
    return self;
    
}

-(NSString *)process {
    NSArray *components = [_aString componentsSeparatedByString:@" "];
    NSMutableString *camelCaseString = [NSMutableString string];
    [components enumerateObjectsUsingBlock:^(NSString *component, NSUInteger idx, BOOL *stop) {
        [camelCaseString appendString:(idx == 0 ? component : [component capitalizedString])];
        if (idx > 0) {
            [camelCaseString appendString:[component capitalizedString]];
        } else {
            [camelCaseString appendString:component];
        }
    }];
    return [camelCaseString copy];
}

@end
