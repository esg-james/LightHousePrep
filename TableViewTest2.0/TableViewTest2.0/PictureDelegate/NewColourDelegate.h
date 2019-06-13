//
//  NewColourDelegate.h
//  TableViewTest2.0
//
//  Created by James Oliver on 2019-06-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewColourCell.h"

@protocol NewColourDelegate <NSObject>

-(void)addCell:(NewColourCell *)color;

@end
