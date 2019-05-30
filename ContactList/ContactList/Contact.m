//
//  Contact.m
//  ContactList
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name andEmail:(NSString *)email
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", _name,_email];
}

@end
