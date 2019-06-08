//
//  Player.h
//  2PlayerMathRedo
//
//  Created by James Oliver on 2019-06-08.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Player : NSObject

@property int rightCount;
@property int wrongCount;
- (void)getScore:(BOOL)isAnswerCorrect;

@property (nonatomic) int playerNumber;


@end

NS_ASSUME_NONNULL_END
