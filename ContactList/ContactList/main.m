//
//  main.m
//  ContactList
//
//  Created by James Oliver on 2019-05-28.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *input = [[InputCollector alloc]init];
        ContactList *contactList = [[ContactList alloc]init];
        BOOL quit = NO;
        while(!quit) {
            
            NSString *userInput = [input inputForPrompt:@"Type your command: "];
            if([userInput  isEqual: @"quit"]) {
                quit = YES;
            }
            
            else if([userInput isEqual:@"new"]) {
    
                NSString *name = [input inputForPrompt:@"Enter Your Name: "];
                NSString *email = [input inputForPrompt:@"Enter Your Email: "];
                Contact *contactInfo = [[Contact alloc]initWithName:name andEmail:email];
                [contactList addContact:contactInfo];
                [contactInfo description];
            }
            else if([userInput isEqual:@"list"]) {
                [contactList list];
            }
            else if ([userInput hasPrefix:@"show"]) {
                
                NSArray *componentsArray = [userInput componentsSeparatedByString:@" "];
               // int component = componentsArray[1];
                NSInteger component = [componentsArray[1] integerValue];
                //NSLog(@"%@",componentsArray);
                [contactList showContact:component];
            }
            else if([userInput hasPrefix:@"find"]) {
                
                NSArray *componentsArray = [userInput componentsSeparatedByString:@" "];
                NSString *extractedName = componentsArray[1];
                [contactList findContact:extractedName];
                
            }
                
                
                }
        
        
        
        
        
        
        
        
        
        
        
        /*NSString *box = @"\n";
        
        for(int y = 0; y < 5; y++) {
            box = [box stringByAppendingString:@"*"];
            if(y == 0 || y == 4) {
                box = [box stringByAppendingString:@"*****\n"];
            }
            else {
                for(int x = 0; x < 5; x++) {
                    if(x == 0) {
                        box = [box stringByAppendingString:@"*"];
                    }
                    else if(x == 4) {
                        box = [box stringByAppendingString:@"*\n"];
                    }
                    else {
                        box = [box stringByAppendingString:@" "];
                    }
                    
                }
            }
        }
        NSLog(@"%@",box);*/
        
        
    }
    return 0;
}
