//
//  Doctor.m
//  DoctorPatient
//
//  Created by James Oliver on 2019-05-30.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Doctor.h"
#import "OfficeAdministation.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)myName andSpecialization:(NSString *)mySpec {
    self = [super init];
    if(self) {
        _name = myName;
        _specialization = mySpec;
    }
    return self;
}
-(BOOL)eligibleForAppointment:(BOOL)letsDoThis {
    if(letsDoThis) {
        NSLog(@"your'e good to go");
        return YES;
    }
    else {
        NSLog(@"get out");
        return NO;
    }
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Hello, my name is %@, I'm a doctor specializing in %@", _name,_specialization];
}
@end
