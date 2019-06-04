//
//  ScoreKeeper.h
//  Maths
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property int rightCount;
@property int wrongCount;
@property int playerNumber;
- (void)getScore:(BOOL)isAnswerCorrect;

@end

NS_ASSUME_NONNULL_END
