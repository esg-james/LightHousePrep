//
//  ManipulateDatString.h
//  StringManipulation
//
//  Created by James Oliver on 2019-05-27.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ManipulateDatString : NSObject

-(instancetype)initWithString:(NSString *)string;
-(NSString *)upCase;
-(NSString *)downCase;
-(NSString *)canadianEh;
-(NSString *)deSpace;
-(NSInteger)stringToInt;
-(NSString *)questionableExclamation;
-(NSString *)replaceMyString;
@property NSString * aString;

@end

NS_ASSUME_NONNULL_END
