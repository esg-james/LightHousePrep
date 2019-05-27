//
//  ManipulateDatString.m
//  StringManipulation
//
//  Created by James Oliver on 2019-05-27.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ManipulateDatString.h"

@implementation ManipulateDatString

-(instancetype)initWithString:(NSString *)string {
    
        self = [super init];
        if (self) {
            _aString = string;
        }
        return self;
}

- (NSString *)upCase {
    NSString *theString;
    theString = [_aString uppercaseString];
    return theString;
}

- (NSString *)canadianEh {
    NSString * s;
    s = [_aString stringByAppendingString:@", eh"];
    return s;
}

- (NSString *)downCase {
    NSString * s;
    s = [_aString lowercaseString];
    return s;
}

- (NSString *)deSpace {
    NSString * s;
    s = [_aString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    return s;
}

- (NSInteger)stringToInt {
    NSString * s;
    s = _aString;
    NSUInteger m = [s length];
    return m;
}
- (NSString *)questionableExclamation {
    NSString * s;
    s = _aString;
    
    if([s containsString:@"?"])
        s = @"I don't know";
    else if ([s containsString:@"!"])
        s = @"Whoa, calm down!";
    else
        s = @"Whatever, man";
    
    return s;
}

- (NSString *)replaceMyString {
    NSString * s;
    s = _aString;
    s = @"Goodbye!";
    return s;
}

@end
