//
//  main.m
//  BigNerd_ClassCreation
//
//  Created by James Oliver on 2019-05-14.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

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
        
        Person *person3 = [[Person alloc]init];
        person3.cleaningBill = 3000;
        NSLog(@"The toilet cleaning bill is %d",person3.cleaningBill);
        
        
       // NSLog(@"person is %@",[person theArray]);
        
        

        
        
    }
    return 0;
}
