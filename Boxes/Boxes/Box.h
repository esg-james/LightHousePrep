//
//  Box.h
//  Boxes
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

-(instancetype)initWithBoxVolume:(float)theHeight width:(float)theWidth length:(float)theLength;
-(float)process;
-(float)howManyBoxes:(Box *)box;
@property float boxFits;
@property float height;
@property float width;
@property float length;



@end

NS_ASSUME_NONNULL_END
