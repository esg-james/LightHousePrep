//
//  StockHolding.h
//  Stocks
//
//  Created by James Oliver on 2019-05-14.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StockHolding : NSObject

//defining variables as properties for synthesis in .m
@property NSString *name;
@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;
//defining instance methods
-(float)costInDollars;
-(float)valueInDollars;



@end

NS_ASSUME_NONNULL_END
