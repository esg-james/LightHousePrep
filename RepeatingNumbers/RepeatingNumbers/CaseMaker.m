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
        self = [super init];
        if (self) {
            _aString = string;
        }
        return self;
}

-(NSString *)process {
    NSString *s;
    NSString *m;
    s =_aString;
    s = [s capitalizedString];
    
    m = [s substringToIndex:1];
    m = [m lowercaseString];
    s = [s substringFromIndex:1];
    
    s = [s stringByReplacingOccurrencesOfString:@" " withString:@""];
    s = [m stringByAppendingString:s];
    return s;
}

@end
