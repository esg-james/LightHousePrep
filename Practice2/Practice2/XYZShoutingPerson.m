//
//  XYZShoutingPerson.m
//  Practice2
//
//  Created by James Oliver on 2019-06-04.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "XYZShoutingPerson.h"

@implementation XYZShoutingPerson

- (void)saySomething:(NSString *)greeting {
    NSString *upperCaseIt = [greeting uppercaseString];
    [super saySomething:upperCaseIt];
}

@end
