//
//  main.m
//  Appliances
//
//  Created by James Oliver on 2019-05-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliances.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Appliances *a = [[Appliances alloc]init];
        [a setValue:@"Dick Washer" forKey:@"productName"];
        [a setValue:[NSNumber numberWithInteger:240] forKey:@"voltage"];
        //NSLog(@"this is the %@ and it has %d volts",a.productName,a.voltage);
        NSLog(@"the product name is %@ and it has %@ volts",[a valueForKey:@"productName"], [a valueForKey:@"voltage"]);
        
    }
    return 0;
}
