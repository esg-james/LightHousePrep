//
//  CaseMaker.m
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-24.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "NSString+Util.h"

@implementation NSString(Util)

@dynamic thisWord;

-(instancetype)initWithString:(NSString *)string {
    
    self = [self initWithString:@""];
    return string;
    
 }
//did some reading on categories for this method, I was having trouble solving the exercise with the methods provided, ended up using a category of NSString to achieve the same output
 -(NSString *)process {
 NSMutableString *res = [NSMutableString string];
 [[self componentsSeparatedByString:@" "] enumerateObjectsUsingBlock:^(NSString * _Nonnull string, NSUInteger idx, BOOL * _Nonnull stop) {
 [res appendString:idx == 0 ? [string lowercaseString] : [string capitalizedString]];
 }];
 
 return [res copy];
}

@end
