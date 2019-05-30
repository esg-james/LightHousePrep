//
//  OwnedAppliance.h
//  Appliances
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Appliances.h"

NS_ASSUME_NONNULL_BEGIN

@interface OwnedAppliance : Appliances {
    NSMutableSet *ownerNames;
}


//This is the designated initializer for ownedappliance
-(id) initWithProductName:(NSString *)pn firstOwnerName:(NSString*)n;


-(void)addOwnerNamesObject:(NSString *)n;
-(void)removeOwnerNamesObject:(NSString *)n;


@end

NS_ASSUME_NONNULL_END
