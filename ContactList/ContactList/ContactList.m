//
//  ContactList.m
//  ContactList
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [NSMutableArray new];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    
    [_contactList addObject:newContact];
    
}


-(void)list {
    for(int i = 0; i < [_contactList count]; i++) {
        NSLog(@"%d: %@",i+1,_contactList[i]);
    }
}

-(void)showContact:(NSInteger)contactIndex {
    
    for(int i = 0; i < [_contactList count]; i++) {
        if(i == contactIndex) {
            NSLog(@"This is not the droid you are looing for: %@", _contactList[i]);
        }
    }
    
}
- (void)findContact:(NSString *)matchingInfo {
    for(int i = 0; i < [_contactList count]; i++) {
        NSArray *name = [matchingInfo componentsSeparatedByString:@" "];
        NSString *name1 = name[0];
        if([matchingInfo isEqual:name1]) {
            NSLog(@"This is the droid you are looing for: %@", _contactList[i]);
        }
        else {
            NSLog(@"nah");
        }
    }
}

- (void)duplicateEntry:(NSString *)isItDuplicate :(BOOL)canAddToList {
    
}
//try bonus in the morning, use the same approach, remember you have the variable you need to do this, and the methods at your disposal, read documentation

@end
