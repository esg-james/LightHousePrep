//
//  main.m
//  CustomClassExample
//
//  Created by James Oliver on 2019-05-14.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
       // Employee *fred = [[Employee alloc]init];
        
        //[fred someMethod];
        
       // [fred setName:@"Fred Smith Butthole"];
        
        NSMutableArray *employees = [[NSMutableArray alloc]init];
        for(int i = 0; i < 10; i++){
            Employee *person = [[Employee alloc]init];
            [employees addObject:person];
            NSLog(@"person is %@",person);
        }
        [employees removeObjectAtIndex:5];
        employees = nil;
        
        
        
        
        
    }
    return 0;
}
