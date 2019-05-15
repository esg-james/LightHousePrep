//
//  main.m
//  LargestNumber
//
//  Created by James Oliver on 2019-05-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //instantiating array of nums using shorthand method
        NSArray *higherNum = @[@2,@4,@1,@101,@87,@3,@209,@411,@6];
        //i originally had a @-1 in there but it read as the highest number, not 100% sure why, will have to check in on that
        //defining var to hold the 'highest' value
        NSNumber *highestNum = @0;
        
        //for loop using count to cycle through array elements
        for(int i = 1; i <[higherNum count]; i++){
            //defining and assigning value to newNum from array index[i]
            NSNumber *newNum = [higherNum objectAtIndex:i];
            
            //if statement that sets highestNum to newNum if it is greater in value
            if(newNum > highestNum)
                highestNum = newNum;
        }
        //print it!
        NSLog(@"%@ is the highest number", highestNum);
        
        
        
    }
    return 0;
}
