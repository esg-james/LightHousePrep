//
//  main.c
//  HelloWorld
//
//  Created by James Oliver on 2019-05-07.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
   // printf("Hello, SATAN!\n");
    
    char prev = 0;
    int i = 0;
    
    for(i = 0; i < 100; i++){
        printf("Press ENTER to add 1\n");
        char c = getchar();
        
        if(c == '\n')
        {
            printf("The number is %d \n", i);
            //break;
        }
        
        
        prev = c;
    }
}
