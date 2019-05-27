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
            ManipulateDatString * maker1 = [[ManipulateDatString alloc]initWithString:inputString];
            
            switch (number) {
                case 1:
                    NSLog(@"%@",[maker1 upCase]);
                    break;
                case 2:
                    NSLog(@"%@", [maker1 downCase]);
                    break;
                case 3:
                    NSLog(@"%ld", (long)[maker1 stringToInt]);
                    break;
                case 4:
                    NSLog(@"%@", [maker1 canadianEh]);
                    break;
                case 5:
                    NSLog(@"%@", [maker1 questionableExclamation]);
                    break;
                case 6:
                    NSLog(@"%@", [maker1 deSpace]);
                    break;
                case 7:
                    NSLog(@"%@", [maker1 replaceMyString]);
                    break;
                    
                default:
                    looping = NO;
                    break;
            }
        }
  
    }
    return 0;
}
