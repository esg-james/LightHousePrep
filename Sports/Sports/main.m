//
//  main.m
//  Sports
//
//  Created by James Oliver on 2019-05-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSArray *sports = @[@"Hockey",
                            @"Wakeboarding",
                            @"Wakesurfing",
                            @"Slalom Skiing"];
        
        NSLog(@"The second sport is %@",[sports objectAtIndex:1]);
        
        
    }
    return 0;
}
