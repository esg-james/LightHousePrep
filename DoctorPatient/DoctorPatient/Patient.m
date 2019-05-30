//
//  Patient.m
//  DoctorPatient
//
//  Created by James Oliver on 2019-05-30.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)myName Age:(int)myAge andHealthNumber:(int)myHealthNumber {
    self = [super init];
    
    if(self) {
        _name = myName;
        _age = myAge;
        _healthNumber = myHealthNumber;
    }
    return self;
}

@end
