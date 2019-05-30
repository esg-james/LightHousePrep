//
//  main.m
//  LargestNumber
//
//  Created by James Oliver on 2019-05-13.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayUtility.h"
//POTENTIAL
/*int Occurence(NSArray * A, int size, int n)
{
    static int occur=0;
    if(size == 0)
    {
        int occur2 = (int) occur;
        return occur2;
    }
    
    else
    {
        if ( n == A[size-1])
            occur++;
        Occurence(A, size-1, n);
        return Occurence(A, size-1, n) ;
    }
}
NSArray * A = @[@1,@3,@2,@5,@1,@2,@3,@7,@7,@8,@8,@4,@6,@9,@9,@0];
int size = sizeof(A)/sizeof(A[0]);

int n;

NSLog(@"%@",A.attributeKeys);*/


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        ArrayUtility *arrayUtility = [[ArrayUtility alloc]init];
        NSArray *arrayNum = @[@10000,@3,@876,@1011,@80,@5000,@9999,@8888];
        [arrayUtility largestNumber:arrayNum];
        NSArray *arrayNum2 = @[@1,@3,@7,@57,@33,@65,@87];
        [arrayUtility largestNumber:arrayNum2];
        
        NSArray *arrayNum3 = @[@3,@7,@57,@33,@65,@87,@99];
        [arrayUtility smallestNumber:arrayNum3];
        
        NSArray *arrayNum4 = @[@3,@7,@57,@33,@65,@87,@99];
        [arrayUtility medianNumber:arrayNum4];
        
        NSArray *arrayNum5 = @[@3,@7,@57,@33,@65,@87,@99,@203,@706,@1919,@2020,@20,@31,@56,@89];
        [arrayUtility medianNumber:arrayNum5];
        NSArray *arrayNum6 = @[@3,@7,@57,@33,@65,@87,@99,@203,@706,@1919,@2020,@20,@31,@56,@89,@1800];
        [arrayUtility medianNumber:arrayNum6];
        NSArray *arrayNum7 = @[@1,@65,@66,@100];
        [arrayUtility medianNumber:arrayNum7];
        NSArray *arrayNum8 = @[@0];
        [arrayUtility medianNumber:arrayNum8];
        
        
        
            /*char findC;
            int count = 0;
            NSString *strr = @"123-456-7890";
            char iC;
        
            for (int i = 0; i<arrayNum.count; i++) {
                findC = [strr characterAtIndex:i];
                if (findC == '-'){
                    count++;
                    iC = [strr characterAtIndex:i];
                }
            }
            NSLog(@"Counted times: %c %d", iC, count);*/
        
        int count = 0;
        NSArray *strr = @[@3,@7,@57,@33,@65,@87,@99,@203,@706,@1919,@2020,@20,@31,@56,@89];
        NSString *iC;
        //NSNumber *iCC;
        
        for (int i = 0; i<strr.count; i++) {
            iC = [strr objectAtIndex:i];
            if ([iC  isEqual: @7]){
                count++;
                iC = [strr objectAtIndex:i];
            }
        }
        NSLog(@"Counted times: %@ %d", iC, count);
        
        NSArray *array = @[@1,@2,@1,@2,@1,@2,@2,@2];
        NSMutableArray *m;
        int i = 0;
    
        
 
        
        
        
        /*ArrayUtility *repeater1 = [[ArrayUtility alloc] initWithNumbers: @[@[@1, @10]]];
        NSLog(@"%@", [repeater1 process]);
        ArrayUtility *repeater2 = [[ArrayUtility alloc] initWithNumbers: @[@[@1, @2], @[@2, @3]]];
        //NSLog(@"%@", [repeater2 process]);
        ArrayUtility *repeater3 = [[ArrayUtility alloc] initWithNumbers: @[@[@10, @4], @[@34, @6], @[@92, @2]]];
        //NSLog(@"%@", [repeater3 process]);
        
        //NSString *string1= @"Jordan Mike Liam Taylor Jill Gordon Phil Mark";
        //NSString *string2= @"Marcus Tony Taylor Anny Keenan Brittany Gordon Mike";
        
        NSArray *array=@[@"one",@"one",@"one",@"two",@"two",@"four",@"four",@"four"];
        NSString *priorString = array[0];
        NSMutableDictionary *duplicatesByKey = [[NSMutableDictionary alloc] init];
        NSMutableArray *indexesOfDuplicates = [[NSMutableArray alloc] init];
        
        
        //More potential
        NSArray *n = @[@1,@2,@1,@2,@2,@3,@4,@4,@1,@1,@1,@2,@2,@2];
        
        NSMutableArray *tempArray= [[NSMutableArray alloc] init];
        [tempArray addObjectsFromArray:n];
        //[tempArray addObjectsFromArray:[string2 componentsSeparatedByString:@" "]];
        
        NSCountedSet *bag = [[NSCountedSet alloc] initWithArray:tempArray];
        
        
        NSUInteger repeats = 0;
        NSMutableArray *matches = [[NSMutableArray alloc] init];
        for (NSString *s in bag)
        {
            if ([bag countForObject:s] > 1)
            {
                repeats++;
                [matches addObject:s];
            }
        }
        NSLog(@"Number of names repeated: %ld", repeats);
        NSLog(@"Matches: %@", matches);*/
        
        
        
        
        
        
        NSLog(@"the largest number is %@",[arrayUtility largestNumber:arrayNum]);
        NSLog(@"the largest number is %@",[arrayUtility largestNumber:arrayNum2]);
        NSLog(@"the smallest number is %@",[arrayUtility smallestNumber:arrayNum3]);
        NSLog(@"the median number is %f",[arrayUtility medianNumber:arrayNum4]);
        NSLog(@"the median number is %f",[arrayUtility medianNumber:arrayNum5]);
        NSLog(@"the median number is %f",[arrayUtility medianNumber:arrayNum6]);
        NSLog(@"the median number is %f",[arrayUtility medianNumber:arrayNum7]);
        NSLog(@"the median number is %f",[arrayUtility medianNumber:arrayNum8]);
        

        
        
        
      /*  int *input;
        int n, c;
        
        NSLog(@"Enter the number of elements in the array:");
        scanf("%d", &n);
        
        input = malloc(n * sizeof(int));
        
        NSLog(@"Enter %d elements \n", n);
        for (c = 0; c < n; c++)
            scanf("%d", input + c);//POINTER NOTATION
        
        int prev = input[0];
        int count1 = 1;
        int i;
        int ARRAYSIZE = n;
        NSArray * arrayRepeater = @[@10, @5, @10, @5, @10,@5,@5,@10,@6,@6];
        
        for (i = 1; i < ARRAYSIZE; i++) {
            
            if (input[i] == prev) {
                count1++;
            }
            else {
                NSLog(@"%d=%d ", prev, count1);
                prev = input[i];
                count1 = 1;
            }
            
        }
        
        NSLog(@"%d=%d\n", prev, count1);
        NSLog(@"%d", prev);
        free(input);*/
    }
    
    return 0;
    
}

