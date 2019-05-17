//
//  main.m
//  Cars
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        Car *nissan = [[Car alloc]init];
        
        [nissan setValue:@"Rogue" forKey:@"model"];
        [nissan setValue:@"Nissan" forKey:@"make"];
        [nissan setScore:5000];
        NSLog(@"This is the new %@ %@ travelling at %d miles per hour!!!!",nissan.make, nissan.model, nissan.score);
        
    }
    return 0;
}
