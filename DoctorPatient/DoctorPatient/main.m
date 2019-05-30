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
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSMutableDictionary *patientFiles = [NSMutableDictionary new];
        Doctor *doctor = [[Doctor alloc]initWithName:@"Dr Jum" andSpecialization:@"Butts"];
        NSLog(@"%@", doctor);
        NSString *healthNumber = [InputHandler getInputFor:@"Please provide your health number"];
        Patient *patient = [[Patient alloc]initWithName:@"Bum Commerford" Age:24 andHealthNumber:healthNumber];
        if([healthNumber length] == 9) {
            NSLog(@"Thank you, your health number is: %@", healthNumber);
            [patientFiles setObject:healthNumber forKey:@"Patient 1"];
        }
        else {
            NSLog(@"That is not  a valid health number, please supply a valid health number to receive prescriptions");
        }
       // [patientFiles setObject:healthNumber forKey:];
        NSLog(@"%@", patientFiles);
        
    }
    return 0;
}
