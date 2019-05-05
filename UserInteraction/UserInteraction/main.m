//
//  main.m
//  UserInteraction
//
//  Created by James Oliver on 2019-05-05.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>


int main()
{
    char count[100];
    int amt;
    
    printf("Enter your name\n");
    gets(count);
    printf("Enter a string to calculate it's length\n");
    scanf("%s", count);
    amt = strlen(count);
    printf("Length of the string = %d\n", amt);
}

