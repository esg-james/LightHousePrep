//
//  SketchState.h
//  PoliceSketch
//
//  Created by James Oliver on 2019-06-03.
//  Copyright © 2019 Sam Meech-Ward. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LHLViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SketchState : NSObject


@property (nonatomic, strong) NSString *currentEyes;
@property (nonatomic, strong) NSString *currentNose;
@property (nonatomic, strong) NSString *currentMouth;

-(void)nextEyes;
-(void)previousEyes;
-(void)nextNose;
-(void)previousNose;
-(void)nextMouth;
-(void)previousMouth;



@end

NS_ASSUME_NONNULL_END
