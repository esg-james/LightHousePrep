//
//  Employee.h
//  CustomClassExample
//
//  Created by James Oliver on 2019-05-14.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Employee : NSObject

@property NSString *name;
@property NSDate *hireDate;
@property NSNumber *number;
@property int employeeNumber;

//somemethod, returns void
- (void) someMethod;

@end

NS_ASSUME_NONNULL_END
