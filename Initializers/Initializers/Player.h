//
//  Player.h
//  Initializers
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Player : NSObject

@property int score;
-(id) initWithInteger:(int) initialScore;

@end

NS_ASSUME_NONNULL_END
