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
        
        
        
        NSMutableArray *sports = [[NSMutableArray alloc]initWithObjects:@"Hockey",
                                  @"Wakeboarding",
                                  @"Wakesurfing",
                                  @"Slalom Skiing", nil];
        NSLog(@"The 1st sport is %@",[sports objectAtIndex:0]);
        [sports removeLastObject];
        [sports insertObject:@"Slalom Skiing" atIndex:0];
        NSLog(@"The 1st sport is now %@",[sports objectAtIndex:0]);
        NSLog(@"%@ is now the  second sport",[sports objectAtIndex:1]);
        /*NSMutableArray *sports = @[@"Hockey",
                            @"Wakeboarding",
                            @"Wakesurfing",
                            @"Slalom Skiing"];*/
        for(NSArray *n in sports)
            NSLog(@"%@",n);
            
        
        
        
    }
    return 0;
}
