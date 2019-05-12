//
//  main.m
//  check_for_int
//
//  Created by James Oliver on 2019-05-11.
//  Copyright © 2019 James Oliver. All rights reserved.
//
//void myFunction(void);
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //inputting integers and printing them
        /*int i;
        NSLog(@"enter a number");
        scanf("%d", &i);
        NSLog(@"the integer is %d",i);
        while(1){
            i++;
        }*/
        //using class method NSDate to assign the current date to *now
        NSDate *now = [NSDate date];
        //using a 'nested message send' to declare current date assigned to *now2
        NSDate *now2 = [[NSDate alloc] init];
        //Printing out the address in memory and also the current date
        NSLog(@"The date is stored at %p",now);
        NSLog(@"The date is %@",now);
        
        //assigning seconds since 1970 as a double to seconds and printing it out using %f format string
        double seconds = [now2 timeIntervalSince1970];
        NSLog(@"It has been %f seconds since Jan 1, 1970",seconds);
        
        //Adding by time interval to *later a value of 100,000 and printing out what the date will be when that interval has passed
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"in 100,000 seconds, it will be %@",later);
        
        //can use 'id' to declare a pointer to an object when you aren't sure what kind of object the pointer will reference
        id delegate;
        
        
        //using the class method NSDateComponents in a nested message send to assign my birthday to *comps
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1995];
        [comps setMonth:4];
        [comps setDay:12];
        [comps setHour:4];
        [comps setMinute:1];
        [comps setSecond:1];
        
        //creating an object from the year/month/day/hour/minute/second of my birth
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        //assigning seconds since my birth to double d, then printing out how many seconds it has been from when i was born
        double d = [later timeIntervalSinceDate:dateOfBirth];
        NSLog(@"It has been %f seconds since I was born on %@",d,dateOfBirth);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:now];
        NSUInteger hour = [cal ordinalityOfUnit:NSCalendarUnitHour
                                        inUnit:NSCalendarUnitYear
                                        forDate:now];
        NSLog(@"It is the %luth day of the month",day);
        NSLog(@"It is the %lurd hour of the year",hour);
        
        //nil pointer
       /*NSString *fido = nil;
        if(fido != nil)
        {
            [fido goGetTheNewspaper];
        }*/
        
        NSTimeZone* systemTimeZone = [NSTimeZone systemTimeZone];
        BOOL dstIsOn = [systemTimeZone isDaylightSavingTime];
        NSLog(@"DST: %hhd",dstIsOn);
        
        
    }
    return 0;
}

