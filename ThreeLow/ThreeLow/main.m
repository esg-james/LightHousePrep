//
//  main.m
//  ThreeLow
//
//  Created by James Oliver on 2019-05-29.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        BOOL holdingDie = YES;
        BOOL hasSelectedOneDie = NO;
        int diceCount = 5;
        GameController *ctrl = [[GameController alloc]init];
        
        [ctrl addDie];
        
        while(gameOn) {
            holdingDie = YES;
            NSString *userInput = [InputHandler getInputFor:@"Welcome to Threelow, the game of having less\nWould you like to 'roll'?\nWould you like to 'reset'?\nWould you like to 'freeze' a die?\nWould you like to 'reset' your dice?"];
            
            
            
            
            if([userInput isEqual:@"roll"]) {
                ctrl.rollsSinceLastReset += 1;
                for(int i = 0; i < [ctrl.dieLeft count]; i++) {
                    
                    Dice *myDice = ctrl.dieLeft[i];
                    [myDice rollDie];
                    //[ctrl.dieLeft[i] rollDie];
                    NSLog(@"Dice Value: %@ At Index: %d",ctrl.dieLeft[i],i);
                }
            }
            while(holdingDie) {
                
                
                
                
                if(diceCount <= 0) {
                    holdingDie = NO;
                    gameOn = NO;
                    [ctrl finalScore];
                    continue;
                }
                NSString *holdWhichDie = [InputHandler getInputFor:@"Which die would you like to hold? If you would like to unhold any die, type 'unhold' followed by the index you want to unhold."];
                if([holdWhichDie isEqualToString:@"done"] && hasSelectedOneDie) {
                    holdingDie = NO;
                    continue;
                }
                else if([holdWhichDie isEqualToString:@"done"]) {
                    NSLog(@"You must select at least one die to hold %d", hasSelectedOneDie);
                    continue;
                }
                NSArray *formattedInput = [holdWhichDie componentsSeparatedByString:@" "];
                if([formattedInput[0] isEqualToString:@"unhold"]) {
                    int indexToRemove = [formattedInput[1] intValue];
                    [ctrl unholdDie:indexToRemove];
                    
                }
                else if([holdWhichDie isEqualToString:@"reset"]) {
                    [ctrl rollsSinceReset];
                    [ctrl resetHeldDie];
                    holdingDie = NO;
                }
                else {
                    int diceIndex = [holdWhichDie intValue];
                    [ctrl holdDie:diceIndex];
                    diceCount -= 1;
                    hasSelectedOneDie = YES;
                    
                    
                }
            }
       
            if([userInput isEqual:@"quit"]) {
                gameOn = NO;
            }
        }
        
    }
    return 0;
}

//maybe change die initialization in gamecontroller to be only prompted when the user enters roll
//use inputString isEqualTo to check for roll
//if roll, add die
//don't need to return anything from remove die, simple function call

//if 1, 2, 4, 5, add to score
//if 3, don't add to score
//score tallied at end of game, when there are no die left(?)
//who am I rolling against, another player? An object? <--- probably and object that basically does the same thing after my turn completes?
//features to add - game loop /held die:this will allow user to freeze die? using indexes of array element to  freeze them, set them to a BOOL value that means they are perhaps deleted from one array but added to another? maybe if I add an array to an array and then remove the objects that aren't to be rolled (store their values as score?) then use that new array to continue game? <---- this will be hard
//^similar, but we want to unhold if the user makes a mistake, for these methods listed, I need to display the die face for ease
//reset held die, should be similar to the unhold die method, remember that holding and unholding are basically just switching the arrays they are in?
//score keeper
