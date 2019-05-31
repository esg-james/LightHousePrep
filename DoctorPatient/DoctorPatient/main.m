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
#import "OfficeAdministation.h"
#import "Symptoms.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //contains patient files when a valid health number is provided
        NSMutableDictionary *patientFiles = [NSMutableDictionary new];
        
        //the front desk holds patient information
        OfficeAdministation *frontDesk = [[OfficeAdministation alloc] init];
        [frontDesk setUp];
        
        //symptoms provided by patient
        Symptoms *theirSymptoms = [[Symptoms alloc] init];
        
        while(1) {
            
            //instantiating doctor and calling description
            Doctor *doctor = [[Doctor alloc]initWithName:@"Dr Jum" andSpecialization:@"Butts"];
            NSLog(@"%@", doctor);
            
            //getting input for health number
            NSString *name = [InputHandler getInputFor:@"Please provide your name"];
            NSString *healthNumber = [InputHandler getInputFor:@"Please provide your health number"];
            NSString *age = [InputHandler getInputFor:@"What is your age?"];
            
            Patient *patient = [[Patient alloc]initWithName:name Age:age andHealthNumber:healthNumber];
            
            
            //doctor checks if front desk has valid information for patient
            BOOL healthNumberCheck = [frontDesk patientHN:healthNumber];
            [doctor eligibleForAppointment:healthNumberCheck];
            
            //patient information is added to patient files
            //[patientFiles setObject:healthNumber forKey:@"Patient"];
            
            
            NSString *patientSymptoms = [InputHandler getInputFor:@"What can I help you with today?"];
            [theirSymptoms symptomsofPatient:patientSymptoms];
            [frontDesk arrayOf:healthNumber];
            NSLog(@"%@",frontDesk.patientArray);
            
        }
        
        
        
        
        //@protocol - This requires any classes using the delegate to do something with the delegate methods by default
        //@optional - if methods are defined as optional, delegates do not NEED to use them
        //@required - these methods will always be required
        
    }
    return 0;
}
