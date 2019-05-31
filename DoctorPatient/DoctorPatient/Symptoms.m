//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Marina Mona June McPeak on 2019-05-30.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Symptoms.h"
#import "Patient.h"

@implementation Symptoms

- (NSString *)symptomsofPatient:(NSString *)symptomInfo {
    
    
    NSString *theInfo = symptomInfo;
    
    if ([theInfo containsString:@"pepperoni"]) {
        NSLog(@"your prescription is mORE PEPPERONI");
    }
    else if ([theInfo containsString:@"sore throat"]) {
        NSLog(@"your prescription is mORE PEPPERONI");
    }
    return theInfo;
}

@end
