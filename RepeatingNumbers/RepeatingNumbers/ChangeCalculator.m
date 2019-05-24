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
    
    NSMutableDictionary *dict;
    
    dict = [@{@"Twenty" : @0,
              @"Ten"  : @0,
              @"Five" : @0,
              @"Two"  : @0,
              @"One"  : @0,
              @"Quarter"  : @0,
              @"Dime"  : @0,
              @"Nickel"  : @0,
              @"Penny"  : @0} mutableCopy];
    
    
    
    
    //dict[@"Attack"] = @([dict[@"Attack"] intValue] + 5);
    
    
   //[dict @"Twenty"] = @([dict[@"Twenty"] intValue] + 1);
    //NSLog(@"Value for Twenty is %@",[dict valueForKey:@"Twenty"]);
    
    
    twentyDollar = pennies / 2000;
    tenDollar = (pennies - (twentyDollar * 2000)) / 1000;
    fiveDollar = (pennies - (twentyDollar * 2000 + tenDollar * 1000)) / 500;
    twoDollar = (pennies - (twentyDollar * 2000 + tenDollar * 1000 + fiveDollar * 500)) / 200;
    dollar = (pennies - (twentyDollar * 2000 + tenDollar * 1000 + fiveDollar * 500 + twoDollar * 200)) / 100;
    quarter = (pennies - (twentyDollar * 2000 + tenDollar * 1000 + fiveDollar * 500 + twoDollar * 200 + dollar * 100)) / 25;
    dime = (pennies - (twentyDollar * 2000 + tenDollar * 1000 + fiveDollar * 500 + twoDollar * 200 + dollar * 100 + quarter * 25)) / 10;
    int nickel = (pennies - (twentyDollar * 2000 + tenDollar * 1000 + fiveDollar * 500 + twoDollar * 200 + dollar * 100 + quarter * 25 + dime * 10)) / 5;
    remainder = (pennies - (twentyDollar * 2000 + tenDollar * 1000 + fiveDollar * 500 + twoDollar * 200 + dollar * 100 + quarter * 25 + dime * 10 + nickel * 5));
    
    for(int i = 0; i < dict.count; i++)
   {
       NSNumber *amt;
       if(twentyDollar != 0){
           amt = [NSNumber numberWithInteger:twentyDollar];
           [dict setValue:amt forKey:@"Twenty"];
       }
       else {
           [dict removeObjectForKey:@"Twenty"];
       }
       if(tenDollar != 0){
           amt = [NSNumber numberWithInteger:tenDollar];
           [dict setValue:amt forKey:@"Ten"];
       }
       else {
           [dict removeObjectForKey:@"Ten"];
       }
       if(fiveDollar != 0){
           amt = [NSNumber numberWithInteger:fiveDollar];
           [dict setValue:amt forKey:@"Five"];
       }
       else {
           [dict removeObjectForKey:@"Five"];
       }
       
       if(twoDollar != 0){
           amt = [NSNumber numberWithInteger:twoDollar];
           [dict setValue:amt forKey:@"Two"];
       }
       else {
           [dict removeObjectForKey:@"Two"];
       }
       if(dollar != 0){
           amt = [NSNumber numberWithInteger:dollar];
           [dict setValue:amt forKey:@"One"];
       }
       else {
           [dict removeObjectForKey:@"One"];
       }
       if(quarter != 0){
           amt = [NSNumber numberWithInteger:quarter];
           [dict setValue:amt forKey:@"Quarter"];
       }
       else {
           [dict removeObjectForKey:@"Quarter"];
       }
       if(dime != 0){
           amt = [NSNumber numberWithInteger:dime];
           [dict setValue:amt forKey:@"Dime"];
       }
       else {
           [dict removeObjectForKey:@"Dime"];
       }
       if(nickel != 0){
           amt = [NSNumber numberWithInteger:nickel];
           [dict setValue:amt forKey:@"Nickel"];
       }
       else {
           [dict removeObjectForKey:@"Nickel"];
       }
       amt = [NSNumber numberWithInteger:remainder];
       if(pennies != 0){
           amt = [NSNumber numberWithInteger:remainder];
           [dict setValue:amt forKey:@"Penny"];
       }
       else {
           [dict removeObjectForKey:@"Penny"];
       }
   }
    
    
    /*NSArray *amounts = @{@0:,@1,@2,@3,@4,@5,@6,@7,@8};
    NSArray *denominations = {@"Twenty" : @"Ten" : @"Five" : @"Two" : @"One D" : @"Quarter" : @"Dime" : @"Nickel" : @"Penny"};
     
     for(int i = 0; i < amounts.count; i++) {
     if amounts[i] > 0
     dict[denominations[i]] = [NSNumber numberWithInteger:amounts[i]]
    }*/
    
    
    return dict;
}


@end
