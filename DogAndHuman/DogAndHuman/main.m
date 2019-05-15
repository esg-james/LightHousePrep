//
//  main.m
//  DogAndHuman
//
//  Created by James Oliver on 2019-05-14.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // insert code here...
        Person *james = [[Person alloc]init];
        Dog *betty = [[Dog alloc]init];
        Dog *betty1 = [[Dog alloc]init];
        Dog *betty2 = [[Dog alloc]init];
        [betty setSpeak:@"Woof"];
        //Person *myPet = [Dog set]
        [betty setName:@"Black Betty"];
        james.pet = betty;
        NSLog(@"%@",james.pet.name);
        james.pet = betty1;
        NSLog(@"%@",james.pet.name);
        james.pet = betty2;
        NSLog(@"%@",james.pet.name);
        
        [james setName:@"Jum"];
        
        NSLog(@"my name is now %@",james.name);
        NSLog(@"%@",[betty speak]);
        
        
    }
    return 0;
}
