//
//  Maid.h
//  BigNerd_ClassCreation
//
//  Created by James Oliver on 2019-05-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
//^import person header for maid to access

NS_ASSUME_NONNULL_BEGIN
//maid inherits from person
@interface Maid : Person

@property (nonatomic) int cleaningBill;

@end

NS_ASSUME_NONNULL_END
