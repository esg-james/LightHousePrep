//
//  Box.m
//  Boxes
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithBoxVolume:(float)theHeight width:(float)theWidth length:(float)theLength {
    
        self = [super init];
        if (self) {
            
            _height = theHeight;
            _length = theLength;
            _width = theWidth;
        }
        return self;
}

- (float)process {
    float result = _length * _width * _height;
    return result;
    
//    return _length * _width * _height;
}

- (float)howManyBoxes:(Box *)box {
    return [box process] / [self process];
}


@end
