//
//  SubScriptClass.h
//  ObjectSubscripting
//
//  Created by James Oliver on 2019-06-01.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SubScriptClass : NSObject

- (id)objectAtIndexedSubscript:(NSArray *)idx;
- (void)setObject:(id)obj atIndexedSubscript:(NSArray *)idx;

- (id)objectForKeyedSubscript:(NSMutableDictionary *)key;
- (void)setObject:(id)obj forKeyedSubscript:(NSMutableDictionary *)key;

@end

NS_ASSUME_NONNULL_END
