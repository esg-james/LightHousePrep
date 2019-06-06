//
//  XYZPerson.m
//  Practice2
//
//  Created by James Oliver on 2019-06-04.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "XYZPerson.h"

@implementation XYZPerson

- (void)saySomething:(NSString *)greeting {
    NSLog(@"%@", greeting);
}

- (NSString *)sayHello: (NSString *)greeting myFirstName:(NSString *)firstName andLast:(NSString *)lastName  {
    NSLog(@"%@ %@ %@",greeting,firstName,lastName);
    return [NSString stringWithFormat:@"%@! My name is %@ %@",greeting,firstName,lastName];
}

- (void)sayGoodbye {
    [self saySomething:@"Goodbye"];
}

+ (id)person {
    XYZPerson *person = [[self alloc]init];
    return person;
}

- (void)doThis {
    for(int i = 0; i < 5; i++) {
        NSLog(@"%d", i);
    }
}

@end
