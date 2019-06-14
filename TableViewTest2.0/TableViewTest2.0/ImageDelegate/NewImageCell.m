//
//  NewImageCell.m
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "NewImageCell.h"

@implementation NewImageCell

- (instancetype)initWith:(UIImageView *)image
{
    self = [super init];
    if (self) {
        self.dogImageCell = image;
    }
    return self;
}

@end
