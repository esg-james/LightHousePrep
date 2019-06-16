//
//  CatPhoto.m
//  Cats
//
//  Created by James Oliver on 2019-06-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "CatPhoto.h"

@implementation CatPhoto

- (instancetype)initWithCatPhoto:(NSString *)catURL andTitle:(NSString *)title {
    self = [super init];
    
    if(self) {
        
        _titleURL = title;
        _photoURL = catURL;
        
    }
    return self;
}

@end
