//
//  main.m
//  fizzbuzz2_james
//
//  Created by James Oliver on 2019-05-05.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

int i;
int x = 3;
int n = 5;

int main(){
    for(i = 1; i <= 100; i++){
        if(i % x == 0 && i % n == 0)
            printf("FizzBuzz \n");
        else if(i % x == 0)
            printf("Fizz \n");
        else if(i % n == 0)
            printf("Buzz \n");
        else
            printf("The number is %d \n",i);
        
    }
    
    
    
}
