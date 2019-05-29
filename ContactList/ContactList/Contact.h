//
//  Contact.h
//  ContactList
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property NSString * name;
@property NSString * email;
- (instancetype)initWithName:(NSString *)name andEmail:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
