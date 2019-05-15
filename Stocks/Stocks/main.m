//
//  main.m
//  Stocks
//
//  Created by James Oliver on 2019-05-14.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *holdings = [[NSMutableArray alloc]init];
        
        //Create Elan, Set values
        StockHolding *james = [[StockHolding alloc]init];
        [james setName:@"James"];
        [james setPurchaseSharePrice:12.78];
        [james setCurrentSharePrice:11.67];
        [james setNumberOfShares:100];
        [holdings addObject:james];
        
        //Create Apple, Set values
        StockHolding *nick = [[StockHolding alloc]init];
        [nick setName:@"Nick"];
        [nick setPurchaseSharePrice:322.57];
        [nick setCurrentSharePrice:415.33];
        [nick setNumberOfShares:100];
        [holdings addObject:nick];
        
        //Create Microsoft, Set values
        StockHolding *julie = [[StockHolding alloc]init];
        [julie setName:@"Julie"];
        [julie setPurchaseSharePrice:57.44];
        [julie setCurrentSharePrice:57.44];
        [julie setNumberOfShares:100];
        [holdings addObject:julie];
        
        //Iterate through stocks, showing name, value, cost and profit.
        for (StockHolding *d in holdings) {
            //can use bool as condition for printing out holdings
            BOOL isProfitable = [d valueInDollars] > [d costInDollars];
            BOOL isLoss = [d valueInDollars] < [d costInDollars];
            BOOL isEqual = [d valueInDollars] == [d costInDollars];
            if (isProfitable){
                NSLog(@"I have %@ stock worth %.2f dollars that cost me %.2f dollars giving me a profit of %.2f dollars.",
                      [d name],[d valueInDollars],[d costInDollars], ([d valueInDollars] - [d costInDollars]));
            }
            else if (isLoss){
                NSLog(@"I have %@ stock worth %.2f dollars that cost me %.2f dollars giving me a loss of %.2f dollars.",
                      [d name],[d valueInDollars],[d costInDollars], ([d valueInDollars] - [d costInDollars]));
            }else if (isEqual){
                NSLog(@"I have %@ stock worth %.2f dollars that cost me %.2f, so there is neither profit nor loss.",
                      [d name],[d valueInDollars],[d costInDollars]);
            }
            
        }
        return 0;
    }
}

