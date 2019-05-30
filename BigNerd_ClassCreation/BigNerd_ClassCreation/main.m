//
//  main.m
//  BigNerd_ClassCreation
//
//  Created by James Oliver on 2019-05-14.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Maid.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person = [[Person alloc]init];
        [person setWeightInKilos:84];
        [person setHeightInMeters:2.3];
        float bmi = [person bodyMassIndex];
        NSLog(@"Person has a BMI of %f",bmi);
        
        NSLog(@"Person (%d Kilos, %f Meters) has a BMI of %f",[person weightInKilos],[person heightInMeters],bmi);
        
        Person *person2 = [[Person alloc]init];
        person2.eyeColor = @"blue";
        NSLog(@"my eye color is %@",person2.eyeColor);
        
        
        
        Maid *person4 = [[Maid alloc]init];
        person4.cleaningBill = 3000;
        person4.eyeColor = @"magenta";
        NSLog(@"The toilet cleaning bill is %d and your maids eye colour is %@",person4.cleaningBill,person4.eyeColor);
        
        Person *person5 = [[Person alloc]initWithProductName:@"Hey"];
        [person5 setValue:@"Dick Washer" forKey:@"name"];
        [person5 setValue:[NSString stringWithFormat:@"I wash Dick"] forKey:@"pet"];
        //person5.dateOfBirth = [NSDate dateWithTimeIntervalSince1970:200000];
        NSLog(@"%@ %@ %@",[person5 valueForKey:@"name"], [person5 valueForKey:@"pet"], [person5 valueForKey:@"dateOfBirth"]);
        
        
       // NSLog(@"person is %@",[person theArray]);
        
        

        
        
    }
    return 0;
}
