//
//  OfficeAdministation.m
//  DoctorPatient
//
//  Created by James Oliver on 2019-05-30.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "OfficeAdministation.h"
#import "Patient.h"

//do I need to import patient in here to access healthnumber, or should I just call a method for the

@implementation OfficeAdministation

-(BOOL)hasHealthNumber:(NSString *)healthNumber {
    
    
    return YES;
}
//can insert values for keys in dictionary in office admin
//office admin needs to be able to add a healthnumber if it is valid, to the dictionary
//office admin will tell doctor the patient is eligible or not for an appointment through health BC
//if no valid health number, charge patient for private appointment?
@end
