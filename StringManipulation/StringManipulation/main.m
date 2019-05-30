//
//  main.m
//  StringManipulation
//
//  Created by James Oliver on 2019-05-27.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ManipulateDatString.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL looping = YES;
        //string inits
        while (looping) {
            int number;
            char inputChars[255];
            
            printf("Select an operation: ");
            scanf("%d",&number);
            
            printf("Input a string: ");
            scanf("%c",inputChars);
            
            fgets(inputChars, 255, stdin);
            strtok(inputChars, "\n");
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            ManipulateDatString *maker1 = [[ManipulateDatString alloc]initWithString:inputString];
            
            switch (number) {
                case 1:
                    NSLog(@"The string is now: %@ and it is located at Mem. Address: %p",[maker1 upCase], &maker1);
                    break;
                case 2:
                    NSLog(@"The string is now: %@ and it is located at Mem. Address: %p",[maker1 downCase], &maker1);
                    break;
                case 3:
                    NSLog(@"The length of this string is: %ld and it is located at Mem. Address %p", (long)[maker1 stringToInt], maker1);
                    break;
                case 4:
                    NSLog(@"The string is really Canadian now: %@ and it is located at Mem. Address: %p",[maker1 canadianEh], &maker1);
                    break;
                case 5:
                    NSLog(@"The string is now a teenager in puberty: %@ and it is located at Mem. Address: %p",[maker1 questionableExclamation], &maker1);
                    break;
                case 6:
                    NSLog(@"The string now has a bunch of dumb hiphens in it: %@ and it is located at Mem. Address: %p",[maker1 deSpace], &maker1);
                    break;
                case 7:
                    NSLog(@"The old switcheroo: %@ is located at Mem. Address: %p",[maker1 replaceMyString], &maker1);
                    break;
                    
                default:
                    looping = NO;
                    break;
            }
        }
  
    }
    return 0;
}
