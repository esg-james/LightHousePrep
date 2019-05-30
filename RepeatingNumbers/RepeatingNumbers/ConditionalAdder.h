//
//  ConditionalAdder.h
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-19.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConditionalAdder : NSObject

@property NSArray* theArray;

- (instancetype)initWithNumbers:(NSArray *)numbers;
- (int)sumWithCondition:(NSString *)condition;

@end

NS_ASSUME_NONNULL_END
