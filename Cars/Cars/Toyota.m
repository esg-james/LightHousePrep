//
//  Toyota.m
//  Cars
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Toyota.h"

@implementation Toyota

//do I use this?!
-(NSString *) drive {
    return [NSString stringWithFormat:@"Prius"];
}


- (id)initWithModel:(NSString *)pn
{
    //OPEN a connection to a DB
    
    self = [super init];
    if (self) {
        pn = @"@Prius";
//can't figure out how to F'n send the prius back to main
    }
    return self;
}

@end
