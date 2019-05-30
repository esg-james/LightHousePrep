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


@property (nonatomic) int speed;
@property (nonatomic, strong) NSString * model;
@property NSString * make;
-(void)drive;
-(id)initWithModel: (NSString *)pn : (NSString *) make;

@end

NS_ASSUME_NONNULL_END
