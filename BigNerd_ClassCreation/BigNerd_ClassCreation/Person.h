//
//  Person.h
//  BigNerd_ClassCreation
//
//  Created by James Oliver on 2019-05-14.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
float heightInMeters;
int weightInKilos;
NSString *eyeColor;

}
@property int weightInKilos;
@property float heightInMeters;
@property NSString * name;
@property NSString * pet;
@property (readonly) NSDate * dateOfBirth;

-(NSString *) eyeColor;
-(void) setEyeColor: (NSString *) newEyeColor;
- (float) bodyMassIndex;

//This is the designated initializer
-(id)initWithProductName: (NSString *)pn;


@end

NS_ASSUME_NONNULL_END
