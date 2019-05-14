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
}
@property int weightInKilos;
@property float heightInMeters;


- (float) bodyMassIndex;

@end

NS_ASSUME_NONNULL_END
