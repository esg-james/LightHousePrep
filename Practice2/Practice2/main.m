//
//  main.m
//  Practice2
//
//  Created by James Oliver on 2019-06-04.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"
#import "XYZPerson2Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        XYZPerson *person = [[XYZPerson alloc]init];
        XYZShoutingPerson *person2 = [[XYZShoutingPerson alloc]init];
        XYZShoutingPerson *person3 = [XYZShoutingPerson person];
        [person3 sayGoodbye];
        XYZPerson *person4;
        if(person4 == nil) {
            NSLog(@"Just a husk");
        }
        
        
        //person2 is calling to an override to capitalize the string passed through saysomething(override)
        [person sayHello:@"sup" myFirstName:@"James" andLast:@"Oliver"];
        [person sayGoodbye];
        [person2 sayHello:@"fuck off" myFirstName:@"Jum" andLast:@"Bum"];
        [person2 sayGoodbye];
        
        XYZPerson2Person *newPerson = [XYZPerson2Person person];
        [newPerson doThis];
        [newPerson saySomething:@"heh"];
    }
    return 0;
}
