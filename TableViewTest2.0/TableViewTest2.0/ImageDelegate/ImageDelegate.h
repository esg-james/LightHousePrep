//
//  ImageDelegate.h
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewImageCell.h"

@protocol ImageCollectionViewDelegate <NSObject>

-(void)changeImage:(NewImageCell *)image;

@end
