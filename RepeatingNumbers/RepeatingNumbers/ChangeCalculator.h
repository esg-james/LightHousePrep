//
//  ChangeCalculator.h
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-21.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChangeCalculator : NSObject

@property int cashTotal;
@property int transaction;
-(instancetype)initWithTransactionTotal:(int)transactionTotal cashGiven:(int)cashGiven;
-(NSDictionary *)calculateChange;

@end

NS_ASSUME_NONNULL_END
