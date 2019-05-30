//
//  Patient.h
//  DoctorPatient
//
//  Created by James Oliver on 2019-05-30.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject

@property int age;
@property NSString *name;
@property int healthNumber;
@property int money;
-(instancetype)initWithName:(NSString *)myName Age:(int)myAge andHealthNumber:(int)myHealthNumber;

@end

NS_ASSUME_NONNULL_END
