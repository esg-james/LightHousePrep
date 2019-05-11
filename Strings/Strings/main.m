//
//  main.m
//  Strings
//
//  Created by James Oliver on 2019-05-11.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        /*NSString *name = @"James";
        NSLog(@"My name is: %@", name);
        NSUInteger stringLength = [name length];
        NSLog(@"The length of my name is: %lu",stringLength);*/
        
        
        //string uppers and downers
        NSString *name = @"james";
        NSString *name1 = @"JAMES";
        NSString *nameUpper = [name uppercaseString];
        NSString *nameLower = [name1 lowercaseString];
        NSLog(@"My name looks like this in all uppercase: %@\n", nameUpper);
        NSLog(@"My name looks like this in all lowercase: %@\n", nameLower);
        
        //appending strings
        NSString *name3 = @"James ";
        NSString *nameAppended = @"and I'm cool";
        NSString *nameResult = [name3 stringByAppendingString:nameAppended];
        NSLog(@"My name is %@", nameResult);
        
        
        //String replacement
        NSString *str1 = @"William";
        NSString *str2 = @"James";
        NSString *realName = @"my name is David or if it's Josh";
        realName = [realName stringByReplacingOccurrencesOfString:@"David" withString:str1];
        realName = [realName stringByReplacingOccurrencesOfString:@"Josh" withString:str2];
        NSLog(@"who knows if %@",realName);
        
        
        NSString *madLib = @"Yesterday, Isabelle and I went to the _ADJECTIVE_1 park. On our way to the _ADJECTIVE_3 park, we saw a _ADJECTIVE_2 _NOUN_ on a bike. We also saw big _ADJECTIVE_2 balloons tied to the _ADJECTIVE_4. Once we got to the _ADJECTIVE_1 park, the sky turned _ADJECTIVE_5. It started to _VERB_1. Isabelle and I _VERB_2 all the way home.";
        
        madLib = [madLib stringByReplacingOccurrencesOfString:@"Isabelle" withString:@"BUM"];
        madLib = [madLib stringByReplacingOccurrencesOfString:@"_ADJECTIVE_1" withString:@"rainbow"];
        madLib = [madLib stringByReplacingOccurrencesOfString:@"_ADJECTIVE_3" withString:@"very wonderful"];
        madLib = [madLib stringByReplacingOccurrencesOfString:@"_ADJECTIVE_4" withString:@"bike racks"];
        madLib = [madLib stringByReplacingOccurrencesOfString:@"_ADJECTIVE_5" withString:@"ice cream"];
        madLib = [madLib stringByReplacingOccurrencesOfString:@"_ADJECTIVE_2" withString:@"direwolf"];
        madLib = [madLib stringByReplacingOccurrencesOfString:@"_NOUN_" withString:@"dancing"];
        madLib = [madLib stringByReplacingOccurrencesOfString:@"_VERB_1" withString:@"rain"];
        madLib = [madLib stringByReplacingOccurrencesOfString:@"_VERB_2" withString:@"flew"];
        
        NSLog(@"%@", madLib);
        
        
    }
    return 0;
}
