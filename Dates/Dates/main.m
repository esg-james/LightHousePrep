//
//  main.m
//  Dates
//
//  Created by James Oliver on 2019-05-12.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSNumber *age = [NSNumber numberWithInteger: 30];
        NSLog(@"My age is %@, it's not my birthday yet",age);
        
        NSInteger newAge = [age integerValue];
        newAge++;
        NSNumber *myAge = [NSNumber numberWithInteger: newAge];
        NSLog(@"Hey, it was my birthday recently, now I'm %@",myAge);
        
     
        
       /* NSDate* date = [NSDate date];
        NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
        formatter.dateFormat = @"April 04, 1989";
        NSString* dateString = [formatter stringFromDate:date];
        NSLog(@"%@",[formatter dateFormat]);*/
        
        NSString *startDate = @"89-04-04";
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yy-MM-dd"];
        NSDate *start = [formatter dateFromString:startDate];
        NSDate *end = [NSDate date];
        //struggled so long with this, I think I got it? I really just wanted to use a method like the block commented out below
        NSTimeInterval interval = [end timeIntervalSinceDate:start];
        NSLog(@"time interval in seconds since I was born on %@: %f", startDate, interval);
        
        NSDateComponents *bdayComps = [[NSDateComponents alloc] init];
        [bdayComps setYear:1989];
        [bdayComps setMonth:4];
        [bdayComps setDay:4];
        [bdayComps setHour:0];
        [bdayComps setMinute:0];
        [bdayComps setSecond:0];
        
        //creating an object from the year/month/day/hour/minute/second of my birth
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:bdayComps];
        //assigning seconds since my birth to double d, then printing out how many seconds it has been from when i was born
        NSDate *now = [NSDate date];
        //NSDate *later = [now dateByAddingTimeInterval:100000];
        double d = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"It has been %f seconds since I was born on %@",d,dateOfBirth);
       //[dateOfBirth timeIntervalSinceNow]
        //figured out how to call timeintervalsincenow 🙄 will be fixing this code to be right tomorrow
        
        
        
        
        
      
        
    }
    return 0;
}
