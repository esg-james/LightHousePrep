//
//  GameController.h
//  ThreeLow
//
//  Created by James Oliver on 2019-05-29.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property NSMutableArray *dieHeld;
@property NSMutableArray *dieLeft;
-(NSMutableArray *) addDie;
-(NSMutableArray *) holdDie;
-(void) removeDie;

@end

NS_ASSUME_NONNULL_END
