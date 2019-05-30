//
//  main.m
//  Inheritance
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"
#import "Train.h"
#import "Bicycle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Vehicle *vehicle = [[Vehicle alloc]init];
        vehicle.currentSpeed = 2.34;
        NSLog(@"%@",vehicle);
        //[vehicle makeNoise];
        
        Train *train = [[Train alloc]init];
        train.currentSpeed = 36.3;
        NSLog(@"traveling at %f miles per hour",train.currentSpeed);
        [train makeNoise];
        
        Bicycle *bike = [[Bicycle alloc]init];
        bike.currentSpeed = 76.3;
        [bike makeNoise];
        bike.hasBasket = YES;
        NSLog(@"%@",bike);
        
        
    
        
        
    }
    return 0;
}
