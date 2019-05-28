//
//  AdditionQuestion.h
//  Maths
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

-(int)theAnswer :(int)num1 : (int)num2;
@property NSInteger number1;
@property NSInteger number2;
@property NSInteger answer;
@property NSString *question;

@end

NS_ASSUME_NONNULL_END
