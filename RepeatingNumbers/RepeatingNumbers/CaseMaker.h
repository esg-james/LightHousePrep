//
//  CaseMaker.h
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-25.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CaseMaker : NSObject

-(instancetype)initWithString:(NSString *)string;
-(NSString *)process;
@property NSString * aString;

@end

NS_ASSUME_NONNULL_END
