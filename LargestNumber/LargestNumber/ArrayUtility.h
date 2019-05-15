//
//  ArrayUtility.h
//  LargestNumber
//
//  Created by James Oliver on 2019-05-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN



@interface ArrayUtility : NSObject

@property NSNumber* largestNumber;
@property NSNumber* smallestNumber;
@property NSArray* theArray;

- (NSNumber *) largestNumber:(NSArray *)theArray;
- (NSNumber *) smallestNumber:(NSArray *)theArray;



@end

NS_ASSUME_NONNULL_END
