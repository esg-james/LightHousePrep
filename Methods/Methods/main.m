//
//  main.m
//  Methods
//
//  Created by James Oliver on 2019-05-15.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MathUtility.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        MathUtility *util = [[MathUtility alloc]init];
        //accepting result of return into a regular integer and writing it out
        int result = [util timesTen:55];
        NSLog(@"The result is - %i",result);
        result = [util addNumber:99 toNumber:99];
        NSLog(@"The result is - %i",result);
    }
    return 0;
}
