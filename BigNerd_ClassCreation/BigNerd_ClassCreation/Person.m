//
//  Person.m
//  BigNerd_ClassCreation
//
//  Created by James Oliver on 2019-05-14.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos, name, pet, dateOfBirth;
- (float) bodyMassIndex {
    float h = [self heightInMeters];
    return [self weightInKilos] / (h*h);
    //return weightInKilos / (heightInMeters * heightInMeters);
}
- (void) addYourselfToArray:(NSMutableArray *)theArray {
    [theArray addObject:self];
}
-(NSString *) eyeColor {
    return eyeColor;
}
-(void) setEyeColor:(NSString *)newEyeColor {
    eyeColor = newEyeColor;
}

-(id)initWithProductName:(NSString *)pn{
    self = [super init];
    if(self){
        //[self setProductName:pn];
        name = [pn copy];
        pet = @"hey";
        dateOfBirth = [NSDate dateWithTimeIntervalSinceReferenceDate:2000000];
        NSLog(@"This init is called and the date is %@",dateOfBirth);
    }
    return self;
}

/*- (void) setHeightInMeters:(float)h {
    heightInMeters = h;
}
- (void) setWeightInKilos:(int)w {
    weightInKilos = w;
}

- (float) bodyMassIndex {
    return weightInKilos / (heightInMeters * heightInMeters);
}
- (float)heightInMeters {
    return heightInMeters;
}
- (int)weightInKilos {
    return weightInKilos;
}*/

@end
