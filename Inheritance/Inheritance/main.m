//
//  main.m
//  Inheritance
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Vehicle *vehicle = [[Vehicle alloc]init];
        vehicle.currentSpeed = 2.34;
        NSLog(@"%@",vehicle);
        
    }
    return 0;
}
