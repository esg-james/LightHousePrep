//
//  main.m
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-18.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberRepeater.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NumberRepeater *arrayUtility = [[NumberRepeater alloc]init];
        NSArray *arrayNum = @[@10000,@3,@876,@1011,@80,@5000,@9999,@8888];
        [arrayUtility largestNumber:arrayNum];
        NSLog(@"the largest number is %@",[arrayUtility largestNumber:arrayNum]);
        
        
        NumberRepeater *repeater1 = [[NumberRepeater alloc] initWithNumbers: @[@[@1, @10]]];
        NSLog(@"%@", [repeater1 process]);
        
        NumberRepeater *repeater2 = [[NumberRepeater alloc] initWithNumbers: @[@[@1, @2], @[@2, @3]]];
        NSLog(@"%@", [repeater2 process]);
        NumberRepeater *repeater3 = [[NumberRepeater alloc] initWithNumbers: @[@[@10, @4], @[@34, @6], @[@92, @2]]];
        NSLog(@"%@", [repeater3 process]);
        
       /* NSMutableString* output = [NSMutableString stringWithFormat:@"response: %@",[JSON valueForKeyPath:@"Status"]];
        int x;
        for (x=0; x<[dataarray count]; x++) {
            NSLog(@"%d : %@",x, [dataarray objectAtIndex:x]);
            [output appendFormat:@" %@ ",[dataarray objectAtIndex:x]];
        }*/
        
        
        
    }
    return 0;
}




