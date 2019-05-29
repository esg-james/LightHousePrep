//
//  ContactList.h
//  ContactList
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject
-(void)addContact:(Contact *)newContact;
@property NSMutableArray *contactList;
-(void)list;
-(void)showContact:(NSInteger)contactIndex;
-(void)findContact:(NSString *)matchingInfo;
-(void)duplicateEntry:(NSString *)isItDuplicate:(BOOL)canAddToList;

@end

NS_ASSUME_NONNULL_END
