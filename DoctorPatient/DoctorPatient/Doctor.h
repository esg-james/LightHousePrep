//
//  Doctor.h
//  DoctorPatient
//
//  Created by James Oliver on 2019-05-30.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property NSString *specialization;
@property NSString *name;
@property int patientHN;
-(BOOL)hasHealthNumber:(NSMutableArray *)patientFiles;
-(instancetype)initWithName:(NSString *)myName andSpecialization:(NSString *)mySpec;
@property NSDictionary *patientInfo;
-(BOOL)eligibleForAppointment:(BOOL)letsDoThis;

@end

NS_ASSUME_NONNULL_END
