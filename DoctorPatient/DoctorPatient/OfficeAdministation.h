//
//  OfficeAdministation.h
//  DoctorPatient
//
//  Created by James Oliver on 2019-05-30.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface OfficeAdministation : NSObject
-(void)setUp;
- (BOOL)patientHN:(NSString *)healthNumberInput;
-(NSMutableDictionary *)arrayOf:(NSString *)Patients;
@property NSMutableDictionary *patientArray;

@end

NS_ASSUME_NONNULL_END
