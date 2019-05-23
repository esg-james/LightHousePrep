//
//  ChangeCalculator.m
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-21.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "ChangeCalculator.h"

@implementation ChangeCalculator

-(instancetype)initWithTransactionTotal:(int)transactionTotal cashGiven:(int)cashGiven {
    _cashTotal = cashGiven;
    _transaction = transactionTotal;
    return self;
}

-(NSDictionary *)calculateChange {
    
    int pennies = _cashTotal - _transaction;
    int quarter = (pennies / 25);
    int dime = (pennies / 10);
    int dollar = pennies / 100;
    int twoDollar = pennies / 200;
    int fiveDollar = pennies / 500;
    int tenDollar = pennies / 1000;
    int twentyDollar = pennies / 2000;
    int remainder = pennies - (dime * 10);
    
    NSDictionary *dict = [[NSDictionary alloc]init];
    
    twentyDollar = pennies / 2000;
    tenDollar = (pennies - (twentyDollar * 2000)) / 1000;
    fiveDollar = (pennies - (twentyDollar * 2000 + tenDollar * 1000)) / 500;
    twoDollar = (pennies - (twentyDollar * 2000 + tenDollar * 1000 + fiveDollar * 500)) / 200;
    dollar = (pennies - (twentyDollar * 2000 + tenDollar * 1000 + fiveDollar * 500 + twoDollar * 200)) / 100;
    quarter = (pennies - (twentyDollar * 2000 + tenDollar * 1000 + fiveDollar * 500 + twoDollar * 200 + dollar * 100)) / 25;
    dime = (pennies - (twentyDollar * 2000 + tenDollar * 1000 + fiveDollar * 500 + twoDollar * 200 + dollar * 100 + quarter * 25)) / 10;
    int nickel = (pennies - (twentyDollar * 2000 + tenDollar * 1000 + fiveDollar * 500 + twoDollar * 200 + dollar * 100 + quarter * 25 + dime * 10)) / 5;
    remainder = (pennies - (twentyDollar * 2000 + tenDollar * 1000 + fiveDollar * 500 + twoDollar * 200 + dollar * 100 + quarter * 25 + dime * 10 + nickel * 5));
    
    NSLog(@"%d",dime);
    
    return dict;
}


@end
