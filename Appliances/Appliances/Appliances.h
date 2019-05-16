//
//  Appliances.h
//  Appliances
//
//  Created by James Oliver on 2019-05-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Appliances : NSObject {
    NSString * productName;
    int voltage;
}

//@property (copy, nonatomic) NSString * productName;
@property (nonatomic) int voltage;

//This is the designated initializer
-(id)initWithProductName: (NSString *)pn;

@end

NS_ASSUME_NONNULL_END
