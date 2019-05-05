//
//  main.m
//  UserInteraction
//
//  Created by James Oliver on 2019-05-05.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>

//had a little fun with the example and went on a tangent for a bit, trying to accompany myself with this stuff more.
int main()
{
    char count[100];
    int amt;
    
    printf("Enter your name\n");
    gets(count);
    printf("Enter a string to calculate it's length\n");
    scanf("%s", count);
    //still confused on exactly what I did wrong here, the loop seems to halt when this happens, perhaps due to this warning?
    amt = strlen(&count);
    printf("Length of the string = %d\n", amt);
}

