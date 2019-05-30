//
//  TalkingCalendar.h
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-20.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TalkingCalendar : NSObject

@property NSString * myDate;
- (instancetype)initWithDate : (NSString*) date;
- (NSString *)parse;

@end

NS_ASSUME_NONNULL_END
