//
//  main.m
//  basicArrays
//
//  Created by James Oliver on 2019-05-12.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int multipleValues[] = {1, 2, 3, 4, 5};
        NSLog(@"the third value is %i",multipleValues[2]);
        NSString *myStringArray[] = {@"one",@"two",@"three",@"four",@"five"};
        //NSString *replacement = @"six";
        NSLog(@"the third value is %@",myStringArray[2]);
        
        
        
    }
    return 0;
}
