//
//  main.m
//  DoctorPatient
//
//  Created by James Oliver on 2019-05-30.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *doctor = [[Doctor alloc]initWithName:@"Dr Jum" andSpecialization:@"Butt Doctor"];
        NSLog(@"%@", doctor);
        Patient *patient = [[Patient alloc]initWithName:@"Bum Commerford" Age:24 andHealthNumber:666666666];
        
        
    }
    return 0;
}
