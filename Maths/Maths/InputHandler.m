//
//  InputHandler.m
//  Maths
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)getInputFor:(NSString *)questionString {
    
    // log to console a question
    NSLog(@"%@", questionString);
    
    //get input
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    
    //convert to NSString + fromat it nicely
    NSString *answerInput = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSCharacterSet *mySet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    answerInput = [answerInput stringByTrimmingCharactersInSet:mySet];
    
    return answerInput;
}

@end
