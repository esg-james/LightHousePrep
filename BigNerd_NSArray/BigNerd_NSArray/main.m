//
//  main.m
//  BigNerd_NSArray
//
//  Created by James Oliver on 2019-05-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
      /*  NSArray *myArray = [[NSArray alloc]initWithObjects:@"one",@"two",@"three", nil];
        NSLog(@"The third object is %@",myArray[2]);
        
        //creating date objects to represent current, tomorrow, yesterday (24*60*60 = full day) (-24*60*60)
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24 * 60 * 60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24 * 60 * 60];
        NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        NSLog(@"This is a date: %@ at position 0",[dateList objectAtIndex:0]);
        NSLog(@"This is a date: %@ at position 1",dateList[1]);
        
        //cycling through array with regular for loop
        NSUInteger dateCount = [dateList count];
        for(int i = 0; i < dateCount; i++){
            NSDate *d = [dateList objectAtIndex:i];
            NSLog(@"%@ is a date",d);
        }
        
        //for in loop / fast enum  - checking for all dates in dateList
        for(NSDate *d in dateList)
            NSLog(@"%@ is a date",d);
        
        //mutable array, manipulated below with additions and removals
        NSMutableArray *mutableDates = [NSMutableArray array];
        
        [mutableDates addObject:now];
        [mutableDates addObject:tomorrow];
        
        [mutableDates insertObject:yesterday atIndex:0];
        
        for(NSDate *d in mutableDates)
            NSLog(@"%@ is a date",d);
        
        [mutableDates removeObject:yesterday];
        
        for(NSDate *d in dateList)
            NSLog(@"%@ is a date",d);*/
        
        /*NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        for(NSString *n in names){
            
            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
            if(r.location != NSNotFound)
                NSLog(@"%@", n);
            
            NSString *a = @"ABC";
            NSString *b = @"abc";
            
            if([a caseInsensitiveCompare:b] == NSOrderedSame)
                NSLog(@"a and b are equal: %@ %@", a, b);
                if([a caseInsensitiveCompare:b] == NSOrderedAscending)
                    NSLog(@"a comes before b: %@ %@", a, b);
                    if([a caseInsensitiveCompare:b] == NSOrderedDescending)
                        NSLog(@"b comes before a: %@ %@", a, b);
            
        }*/
        
        //defining string from file path for names
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        //defining string from path for words
        NSString *regularWords = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        
        //using the regularWords/nameString to create an array that separates components by string, designated as a line break
        NSArray *words = [regularWords componentsSeparatedByString:@"\n"];
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        //define a mutable array called commonall
        NSMutableArray *commonall = [NSMutableArray array];
        
        //use addobjects/remove object
        [commonall addObjectsFromArray:words];
        [commonall removeObjectsInArray:names];
        
        
        for (NSString *w in commonall)
        {
            for (NSString *n in names)
            {
                //if the name and the word have the same order of characters, regardless of being capitalized or not, the if statement here will ask nslog to print out the comparison, does not print if the caseinsensitivecompare finds they are not ordered the same ie molly != joe
                if ([w caseInsensitiveCompare:n] == NSOrderedSame)
                {
                    NSLog(@"Name:%@ = word:%@", n, w);
                }
            }
        }
        
    
                
        
        
  
        
        
        
    }
    return 0;
}
