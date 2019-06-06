//
//  XYZPerson2Person.m
//  Practice2
//
//  Created by James Oliver on 2019-06-04.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "XYZPerson2Person.h"

@implementation XYZPerson2Person

+ (id)person {
    
    XYZPerson *person = [[self alloc]init];
    [person sayGoodbye];
    return person;
    
    
    
}

@end
