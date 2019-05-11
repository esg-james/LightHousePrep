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
        
        
        
    }
    return 0;
}
