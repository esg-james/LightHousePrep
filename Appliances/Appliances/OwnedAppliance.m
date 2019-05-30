//
//  OwnedAppliance.m
//  Appliances
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance

-(id) initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n {
    
    //calling the super classes init
    self = [super initWithProductName:pn];
    
    if(self) {
        //make a set to hold ownernames
        ownerNames = [[NSMutableSet alloc]init];
        
        
        //checking if the firstname is null
        if(n) {
            [ownerNames addObject:n];
        }
        //return pointer to new object
        
    }
    return self;
}
    -(void) addOwnerNamesObject:(NSString *)n {
        [ownerNames addObject:n];
    }
    -(void) removeOwnerNamesObject:(NSString *)n {
        [ownerNames removeObject:n];
    }

-(id)initWithProductName:(NSString *)pn {
    return [self initWithProductName:pn firstOwnerName:nil];
}
    



@end
