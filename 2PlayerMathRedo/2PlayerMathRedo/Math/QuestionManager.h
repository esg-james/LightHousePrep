//
//  QuestionManager.h
//  Maths
//
//  Created by James Oliver on 2019-05-29.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property NSMutableArray *questions;

@property NSTimeInterval timeSpan;
- (NSTimeInterval )timeOutput;

@end

NS_ASSUME_NONNULL_END
