//
//  Car.h
//  Cars
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

@property (nonatomic) int score;
@property NSString * model;
@property NSString * make;
-(NSString *)drive;
-(id)initWithModel: (NSString *)pn;

@end

NS_ASSUME_NONNULL_END
