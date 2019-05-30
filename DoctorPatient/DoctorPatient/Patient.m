//
//  Patient.m
//  DoctorPatient
//
//  Created by James Oliver on 2019-05-30.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)myName Age:(int)myAge andHealthNumber:(NSString *)myHealthNumber {
    self = [super init];
    
    if(self) {
        _name = myName;
        _age = myAge;
        _healthNumber = myHealthNumber;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"\nPatient Name: %@\nPatient Age: %d\nPatient HN: %@", _name,_age,_healthNumber];
}

@end
