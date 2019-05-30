//
//  InputCollector.m
//  ContactList
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector


- (NSString *)inputForPrompt:(NSString *)promptString {
    
    // log to console a question
    NSLog(@"%@", promptString);
    
    //get input
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    
    //convert to NSString + fromat it nicely
    NSString *userInput = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSCharacterSet *mySet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    userInput = [userInput stringByTrimmingCharactersInSet:mySet];
    
    return userInput;
}

@end
