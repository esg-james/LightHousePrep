//
//  main.m
//  LargestNumber
//
//  Created by James Oliver on 2019-05-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayUtility.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        ArrayUtility *number = [[ArrayUtility alloc]init];
        [number largestNumber];
        
        NSLog(@"%@",number);
    
        
        
    }
    return 0;
}
