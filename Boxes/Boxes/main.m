//
//  main.m
//  Boxes
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        float input1;
        float input2;
        float input3;
        
        NSLog(@"Enter a number from 0 to 3:\n");
        scanf("%f", &input1);
        NSLog(@"Enter a number from 0 to 3:\n");
        scanf("%f", &input2);
        NSLog(@"Enter a number from 0 to 3:\n");
        scanf("%f", &input3);
        
        //NSLog(@"",);
        
        Box *box1 = [[Box alloc]initWithBoxVolume:input1 width:input2 length:input3];
        Box *box2 = [[Box alloc]initWithBoxVolume:2.2 width:1.3 length:4.5];
        NSLog(@"the result is %f",[box1 process]);
        NSLog(@"%f",[box2 howManyBoxes:box1]);
        
    }
    return 0;
}
