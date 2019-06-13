//
//  NewColourCell.m
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "NewColourCell.h"

@implementation NewColourCell

- (instancetype)initWith:(UIColor *)color
{
    self = [super init];
    if (self) {
        self.colour = color;
    }
    return self;
}

@end
