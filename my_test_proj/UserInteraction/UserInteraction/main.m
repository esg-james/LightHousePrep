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
   /* char count[100];
    int amt;
    printf("Enter a string to calculate it's length\n");
    scanf("%99s", count);
    amt = strlen(count);
    gets(count);
    printf("Length of the string = %d\n", amt);
    //still confused on exactly what I did wrong here, the loop seems to halt when this happens, perhaps due to this warning?*/
    
    /*
     - First name
     - Middle name
     - Last name
     - e-mail address
     - ph#
     */
    char first_name[80];
    char mid_name[80];
    char last_name[80];
    char e_mail[80];
    int ph_number;
    int total_number;
    int total_chars[3];
    int sum = 0;
    int i;
    
    // first name
    printf("Enter your first name\n");
    scanf("%79s", first_name);
    total_number = strlen(first_name);
    gets(first_name);
    sum += total_number;
    printf("Length of the string = %d\n", total_number);
    
    /* middle name
    printf("Enter your middle name\n");
    scanf("%79s", mid_name);
    total_number = strlen(mid_name);
    gets(mid_name);
    sum += total_number;
    printf("Length of the string = %d\n", total_number);*/
    
    //last name
    printf("Enter your last name\n");
    scanf("%79s", last_name);
    total_number = strlen(last_name);
    gets(last_name);
    sum += total_number;
    printf("Length of the string = %d\n", total_number);
    
    //e-mail
    printf("Enter your e-mail\n");
    scanf("%79s", e_mail);
    total_number = strlen(e_mail);
    gets(e_mail);
    sum += total_number;
    printf("Length of the string = %d\n", total_number);
    
    
    printf("Total characters in sign-up = %d\n", sum);
}

