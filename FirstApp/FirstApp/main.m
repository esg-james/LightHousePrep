//
//  main.m
//  FirstApp
//
//  Created by James Oliver on 2019-05-08.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>


//A FUNCTION THAT PRINTS OUT ALL NUMBERS FROM 1-5000 IF THEY ARE NOT DIVISIBLE BY 5
/*static void myFunction() {
    for(int i = 1; i < 5000; i++){
        if(i % 5 == 0){
            continue;
        }
        NSLog(@"The value of the index is %i\n", i);
    }
}*/


//FUNCTION THAT PASSES A VALUE BACK FOR USE IN MAIN
/*int performAddition(int scoreParameter) {
    scoreParameter += 5000;
    NSLog(@"Inside the function, the value is now: %i", scoreParameter);
    return scoreParameter;
}*/

//enum definition
enum seatPreference{window, aisle, middle};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
      
        //ENUM PRACTICE
       /* enum seatPreference bobSeatPreference = aisle;
        enum seatPreference fredSeatPreference = window;
        enum seatPreference joanneSeatPreference = middle;
        
        if(bobSeatPreference == window){
            //do something
        }
        if(fredSeatPreference == window){
            //do something
        }
        if(joanneSeatPreference == window){
            //do something
        }
        
        NSLog(@"fred wants %i", fredSeatPreference);*/
        
        NSString * message = @"HELLO";
        
            
        
        
        
        //int highScore = 10;
        //THIS USES performAddition TO ADD TO highScore
        //highScore = performAddition(highScore);
        //NSLog(@"back in main, highScore is: %i", highScore);
        
        //PRINTING OUT FLOATS USING %f, %e, %g
        /*float myFloat = 33.3f;
        double myDouble = 33.3;
        NSLog(@"My Float is %f", myFloat); //this is going to appear as 33.29999
        NSLog(@"My Float is %e", myFloat);
        NSLog(@"My Float is %g", myFloat);*/
        
        
        //PRINTING OUT LONG LONG INTS and UNSIGNED INTS
        /*long long int myLongLongInteger = 5000000000;
        long long myOtherLongLongInt = 6000000000;
        unsigned int myUnsignedInteger = 99;
        unsigned myOtherUnsignedInteger = 99;
        NSLog(@"My LONGLONGs are %lli and %lli", myLongLongInteger, myOtherLongLongInt);
        NSLog(@"My UNSIGNEDs are %u and %u", myUnsignedInteger, myOtherUnsignedInteger);*/
        
        //FUNCTION CALL
        //myFunction();
        
        //MINUTES IN A YEAR
        /*int minutes = 60;
        int hours = 24;
        int days = 365;
        int minutesinaYear = minutes * hours * days;
        NSLog(@"There are %i minutes in a year", minutesinaYear);
        
         
        //MODULUS, storing remainder in a division
        //int year = 2003;
        //int remainder = year % 4;
        //NSLog(@"The remainder is %d", remainder);
        int stormCategory = 0;
        int i;
        
        //FOR LOOP STORM CAT SWITCH STATEMENT
        for(i = 0; i <= 5; i++)
        {
            stormCategory = i;
            if(stormCategory > 5)
                break;
            else
                switch (stormCategory) {
                    case 0:
                        NSLog(@"it's all good man\n");
                        break;
                    case 1:
                        NSLog(@"it's not that good man\n");
                        break;
                    case 2:
                        NSLog(@"it's not good man\n");
                        break;
                    case 3:
                        NSLog(@"it's definitely not good man\n");
                        break;
                    case 4:
                        NSLog(@"it's fucked\n");
                        break;
                        
                    default:
                        NSLog(@"it's EXTRA fucked\n");
                        break;
            
        }
    }*/
        
    }
    return 0;
}
