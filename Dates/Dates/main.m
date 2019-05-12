//
//  main.m
//  Dates
//
//  Created by James Oliver on 2019-05-12.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSNumber *age = [NSNumber numberWithInteger: 30];
        NSLog(@"My age is %@, it's not my birthday yet",age);
        
        NSInteger newAge = [age integerValue];
        newAge++;
        NSNumber *myAge = [NSNumber numberWithInteger: newAge];
        NSLog(@"Hey, it was my birthday recently, now I'm %@",myAge);
        
     
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
        [dateFormatter setDateFormat:@"1989-04-04"];

        NSLog(@"my birthday is: %@",[dateFormatter dateFormat]);
        
        
      
        
    }
    return 0;
}
