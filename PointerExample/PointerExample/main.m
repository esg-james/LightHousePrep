//
//  main.m
//  PointerExample
//
//  Created by James Oliver on 2019-05-11.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

void myFunction(NSString* x){
    NSLog(@"The string object you passed was %@",x);
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
      //  NSString * firstWord = @"one";
        //NSString * secondWord = @"large";
        NSString * thirdWord = @"pomegranate";
        NSString *shoutyMessage =  [thirdWord uppercaseString];
        NSLog(@"The NSString Objects are %@ and %@",thirdWord, shoutyMessage);
        //myFunction(thirdWord);
        
        NSDate *myDate = [NSDate date];
        NSLog(@"The new NSDate object is: %@",myDate);
        
    }
    return 0;
}
