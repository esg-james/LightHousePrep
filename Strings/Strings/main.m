//
//  main.m
//  Strings
//
//  Created by James Oliver on 2019-05-11.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSString *name = @"James";
        NSLog(@"My name is: %@", name);
        NSUInteger stringLength = [name length];
        NSLog(@"The length of my name is: %lu",stringLength);
        
    }
    return 0;
}
