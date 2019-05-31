//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "InputHandler.h"
#import "Pizza.h"

// User input call:
// NSString *formattedHoldString = [InputHandler formatUserInput]

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please enter the size of pizza you'd like, as well as the desired toppings (separated by spaces): ");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            
            NSString *formattedUserInputString = [InputHandler formatUserInput];
            NSArray *pizzaSizes = @[@"small", @"medium", @"large"];
            NSMutableArray *commandWords = [[formattedUserInputString componentsSeparatedByString:@" "]mutableCopy];
            int pizzaSize = 0;
            if(commandWords.count >0) {
                NSString *theSize = commandWords[0];
                
                [commandWords removeObject:commandWords[0]];
                if([theSize isEqualToString:@"small"]) {
                    pizzaSize = 0;
                }
                else if([theSize isEqualToString:@"medium"]) {
                    pizzaSize = 1;
                }
                else if([theSize isEqualToString:@"large"]) {
                    pizzaSize = 2;
                }
            }
            else {
                NSLog(@"nah");
            }
            
            
            Pizza *myPizza = [[Pizza alloc]initWithSize:pizzaSize andToppings:commandWords];
            NSLog(@"%@",[myPizza description]);
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

