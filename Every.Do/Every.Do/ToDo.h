//
//  ToDo.h
//  Every.Do
//
//  Created by James Oliver on 2019-06-11.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDo : NSObject

@property (nonatomic, weak) NSString *title;
@property (nonatomic, weak) NSString *taskDescription;
@property (nonatomic) NSInteger taskPriority;
@property (nonatomic) BOOL isCompleted;

@end

NS_ASSUME_NONNULL_END
