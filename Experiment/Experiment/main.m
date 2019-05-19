//
//  main.m
//  Experiment
//
//  Created by James Oliver on 2019-05-18.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

size_t most_popular(int input[], size_t input_size, int output[], size_t output_size);

int main(void)
{
    int arr[] = {2, 3, 5, 6, 10, 10, 2, 5, 2};
    size_t len = sizeof(arr)/sizeof(int);
    
    int out[3];
    size_t outlen = sizeof(out)/sizeof(int);
    
    size_t count = most_popular(arr, len, out, outlen);
    
    for (size_t ii = 0; ii < count; ii++) {
        printf("most popular rank %lu: %d\n", ii+1, out[ii]);
    }
    
    return 0;
}

typedef struct
{
    int value;
    int count;
} value_count;

int value_count_greater(const void* lhs, const void* rhs)
{
    const value_count *vcl = lhs, *vcr = rhs;
    return vcr->count - vcl->count;
}

int int_less(const void *lhs, const void *rhs)
{
    const int *il = lhs, *ir = rhs;
    return *il - *ir;
}

// returns 0 if out of memory or input_size is 0, else returns valid portion of output
size_t most_popular(int input[], size_t input_size, int output[], size_t output_size)
{
    qsort(input, input_size, sizeof(input[0]), int_less);
    
    value_count* value_counts = malloc(input_size * sizeof(value_count));
    if (value_counts == NULL) {
        return 0;
    }
    
    // count how many times each value occurs in input
    size_t unique_count = 0;
    for (size_t ii = 0; ii < input_size; ii++) {
        if (ii == 0 || input[ii] != value_counts[unique_count-1].value) {
            value_counts[unique_count].value = input[ii];
            value_counts[unique_count].count = 1;
            unique_count++;
        } else {
            value_counts[unique_count-1].count++;
        }
    }
    
    // sort unique values by how often they occur, most popular first
    qsort(value_counts, unique_count, sizeof(value_counts[0]), value_count_greater);
    
    size_t result_size = unique_count < output_size ? unique_count : output_size;
    for (size_t ii = 0; ii < result_size; ii++) {
        output[ii] = value_counts[ii].value;
    }
    
    free(value_counts);
    return result_size;
}
