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
        
        
        ArrayUtility *arrayUtility = [[ArrayUtility alloc]init];
        NSArray *arrayNum = @[@2,@4,@1,@101,@87,@1010,@3,@209,@411,@6,@566];
        [arrayUtility largestNumber:arrayNum];
        
        
        
        
        NSLog(@"%@",[arrayUtility largestNumber:arrayNum]);
    
        
        
    }
    return 0;
}
