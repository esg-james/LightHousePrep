//
//  CatPhoto.h
//  Cats
//
//  Created by James Oliver on 2019-06-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CatPhoto : NSObject

@property (nonatomic) NSString *photoURL;
@property (nonatomic) NSString *titleURL;

-(instancetype)initWithCatPhoto:(NSString *)catURL andTitle:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
