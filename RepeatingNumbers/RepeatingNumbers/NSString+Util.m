//
//  CaseMaker.m
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-24.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "NSString+Util.h"

@implementation NSString(Util)

- (NSString *)process {
    NSMutableString *res = [NSMutableString string];
    [[self componentsSeparatedByString:@" "] enumerateObjectsUsingBlock:^(NSString * _Nonnull string, NSUInteger idx, BOOL * _Nonnull stop) {
        [res appendString:idx == 0 ? [string lowercaseString] : [string capitalizedString]];
    }];
    
    return [res copy];
}

@end
