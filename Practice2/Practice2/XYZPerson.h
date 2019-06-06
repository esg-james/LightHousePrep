//
//  XYZPerson.h
//  Practice2
//
//  Created by James Oliver on 2019-06-04.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYZPerson : NSObject

@property NSDate *dateOfBirth;
@property NSString *firstName;
@property NSString *lastName;
- (void) saySomething:(NSString *)greeting;
- (NSString *)sayHello: (NSString *)greeting myFirstName:(NSString *)firstName andLast:(NSString *)lastName;
- (void) sayGoodbye;
+(id)person;
- (void)doThis;


@end

NS_ASSUME_NONNULL_END
