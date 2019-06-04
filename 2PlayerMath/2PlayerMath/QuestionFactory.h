//
//  QuestionFactory.h
//  Maths
//
//  Created by James Oliver on 2019-05-29.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject

@property NSArray *questionSubclassNames;
- (Question *)generateRandomQuestion;


@end

NS_ASSUME_NONNULL_END
