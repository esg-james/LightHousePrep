//
//  main.m
//  Initializers
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Player *player1 = [[Player alloc]init];
        NSLog(@"The score is %i",[player1 score]);
        Player *player2 = [[Player alloc]initWithInteger:9999];
        NSLog(@"The score is %i",[player2 score]);
        
    }
    return 0;
}
