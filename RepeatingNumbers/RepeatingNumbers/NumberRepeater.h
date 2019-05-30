//
//  NumberRepeater.h
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-18.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NumberRepeater : NSObject

@property NSNumber* largestNumber;



@property NSArray* theArray;
@property int count1;
@property int count2;
- (instancetype)initWithNumbers:(NSArray *)numbers;
- (NSString *)process;

- (NSNumber *) largestNumber:(NSArray *)theArray;


@end

NS_ASSUME_NONNULL_END
