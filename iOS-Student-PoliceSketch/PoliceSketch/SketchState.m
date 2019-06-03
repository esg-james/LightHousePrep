//
//  SketchState.m
//  PoliceSketch
//
//  Created by James Oliver on 2019-06-03.
//  Copyright © 2019 Sam Meech-Ward. All rights reserved.
//

#import "SketchState.h"

@interface SketchState()

-(NSString *)next:(NSString *)imgString;
-(NSString *)previous:(NSString *)imgString;

@end

@implementation SketchState

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentEyes = @"eyes_1";
        _currentNose = @"nose_1";
        _currentMouth = @"mouth_1";
    }
    return self;
}
//cycling forward through  array of images
- (NSString *)next:(NSString *)imgString {
    NSMutableArray *allWords = [[imgString componentsSeparatedByString:@"_"]mutableCopy];
    
    NSString *theNumber = allWords[1];
    int currentNumber = [theNumber intValue];
    
    currentNumber = currentNumber < 5 ? currentNumber + 1 : 1;
    
    return [NSString stringWithFormat:@"%@_%d",allWords[0],currentNumber];
    
    
}


//cycling back through array of images
- (NSString *)previous:(NSString *)imgString {
    NSMutableArray *allWords = [[imgString componentsSeparatedByString:@"_"]mutableCopy];
    
    NSString *theNumber = allWords[1];
    int currentNumber = [theNumber intValue];
    
    currentNumber = currentNumber > 1 ? currentNumber - 1 : 5;
    
    return [NSString stringWithFormat:@"%@_%d",allWords[0],currentNumber];
    
}

-(void)nextEyes {
    self.currentEyes = [self next:self.currentEyes];
}
-(void)previousEyes {
    self.currentEyes = [self previous:self.currentEyes];
}
-(void)nextNose{
    self.currentNose = [self next:self.currentNose];
}
-(void)previousNose {
    self.currentNose = [self previous:self.currentNose];
}
-(void)nextMouth{
    self.currentMouth = [self next:self.currentMouth];
}
-(void)previousMouth {
   self.currentMouth =  [self previous:self.currentMouth];
}

- (void)randomFace {
    self.currentEyes = [NSString stringWithFormat:@"eyes_%d",1 + arc4random_uniform(5)];
    self.currentNose = [NSString stringWithFormat:@"nose_%d",1 + arc4random_uniform(5)];
    self.currentMouth = [NSString stringWithFormat:@"mouth_%d",1 + arc4random_uniform(5)];
}




@end
