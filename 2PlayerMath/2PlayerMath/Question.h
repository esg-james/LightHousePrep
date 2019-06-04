//
//  AdditionQuestion.h
//  Maths
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

- (NSTimeInterval)timeDiff;


@property (nonatomic) NSInteger answer;
@property (nonatomic, copy) NSString *question;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger playerNumber;

@end

NS_ASSUME_NONNULL_END
