//
//  main.m
//  Overrides
//
//  Created by James Oliver on 2019-05-16.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Article.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Article *a = [[Article alloc]init];
        Article *b = [[Article alloc]init];
        Article *c = [[Article alloc]init];
        
        NSDate *date = [NSDate dateWithNaturalLanguageString:@"jan 1st 89"];
        NSLog(@"my date: %@",date);
        
        NSLog(@"%@ \n %@ \n %@ \n",a,b,c);
        //Not all classes have or need a custom description method
        NSFileManager *myFM = [[NSFileManager alloc]init];
        NSLog(@"myFM: %@",myFM);
    }
    return 0;
}
