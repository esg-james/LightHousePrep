//
//  Person.h
//  DogAndHuman
//
//  Created by James Oliver on 2019-05-14.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property NSString *name;
@property Dog *pet;

@end

NS_ASSUME_NONNULL_END
