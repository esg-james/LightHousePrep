//
//  main.m
//  ObjCArrays
//
//  Created by James Oliver on 2019-05-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *myDate = [[NSDate alloc]init];
        //NSArray *newArray = @[@"apple",@"orange",@"pear",myDate];
        NSMutableArray *myArray = [[NSMutableArray alloc]initWithObjects:@"one",myDate,@"three", nil];
        NSLog(@"The third object is %@",myArray[1]);
        
        NSString *anotherString = @"Mutable";
        [myArray addObject:anotherString];
        NSLog(@"The fourth object is %@",myArray[3]);
        [myArray removeObjectAtIndex:0];
        NSLog(@"The first object is now %@",myArray[0]);
        
        NSMutableDictionary *states = [[NSMutableDictionary alloc]
                              initWithObjectsAndKeys: @"Arizona",@"AZ",
                              @"Colorado",@"CO",
                              @"Hawaii",@"HI",
                              @"New Mexico",@"NM",nil];
        NSString *someState = @"AZ";
        NSString *someState1 = @"FL";
        [states setObject:@"Florida" forKey:@"FL"];
        //can we use scanf to have the user enter the key and it will then spit out the correct one
        NSLog(@"%@ is for %@",someState,[states objectForKey:someState]);
        NSLog(@"%@ is for %@",someState,states[someState]);
        NSLog(@"%@ is for %@",someState1,states[someState1]);
        
        NSDictionary *quicker = @{@"AZ" : @"Arizona",
                                  @"CA" : @"California",
                                  @"NY" : @"New York",
                                  @"FL" : @"Florida"
                                  };

        //[quicker setValue:@"Wisconsin" forKey:@"WI"];
        //NSLog(@"%@ is for",states[@"WI"]);
        
        NSString *soundPath = @"/System/Library/Sounds";
        NSFileManager *fileManager = [[NSFileManager alloc]init];
        NSArray *soundFiles = [fileManager subpathsAtPath:soundPath];
        
        for (NSString *file in soundFiles) {
            NSLog(@"The file name is %@",file);
        }
        
        
        
        
    }
    return 0;
}
