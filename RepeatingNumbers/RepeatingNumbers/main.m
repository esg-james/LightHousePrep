//
//  main.m
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-18.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberRepeater.h"
#import "ConditionalAdder.h"
#import "TalkingCalendar.h"
#import "ChangeCalculator.h"
#import "NSString+Util.h"
#import "CaseMaker.h"
#import "MultiplicationTableBuilder.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NumberRepeater *arrayUtility = [[NumberRepeater alloc]init];
        NSArray *arrayNum = @[@10000,@3,@876,@1011,@80,@5000,@9999,@8888];
        [arrayUtility largestNumber:arrayNum];
        NSLog(@"the largest number is %@",[arrayUtility largestNumber:arrayNum]);
        
        
        NumberRepeater *repeater1 = [[NumberRepeater alloc] initWithNumbers: @[@[@1, @10]]];
        NSLog(@"%@", [repeater1 process]);
        NumberRepeater *repeater2 = [[NumberRepeater alloc] initWithNumbers: @[@[@1, @2], @[@2, @3]]];
        NSLog(@"%@", [repeater2 process]);
        NumberRepeater *repeater3 = [[NumberRepeater alloc] initWithNumbers: @[@[@10, @4], @[@34, @6], @[@92, @2]]];
        NSLog(@"%@", [repeater3 process]);
        
       
        ConditionalAdder *adder1 = [[ConditionalAdder alloc] initWithNumbers:@[@1, @2, @3, @4, @5]];
        NSLog(@"%i", [adder1 sumWithCondition:@"even"]);
        NSLog(@"%i", [adder1 sumWithCondition:@"odd"]);
        ConditionalAdder *adder2 = [[ConditionalAdder alloc] initWithNumbers:@[@13, @88, @12, @44, @99]];
        NSLog(@"%i", [adder2 sumWithCondition:@"even"]);
        ConditionalAdder *adder3 = [[ConditionalAdder alloc] initWithNumbers:@[]];
        NSLog(@"%i", [adder3 sumWithCondition:@"odd"]);
        
        
        TalkingCalendar *calendar1 = [[TalkingCalendar alloc] initWithDate:@"2017/12/02"];
        NSLog(@"%@", [calendar1 parse]);
        TalkingCalendar *calendar2 = [[TalkingCalendar alloc] initWithDate:@"2007/11/11"];
        NSLog(@"%@", [calendar2 parse]);
        TalkingCalendar *calendar3 = [[TalkingCalendar alloc] initWithDate:@"1987/08/24"];
        NSLog(@"%@", [calendar3 parse]);
        TalkingCalendar *calendar4 = [[TalkingCalendar alloc] initWithDate:@"2122/12/31"];
        NSLog(@"%@", [calendar4 parse]);
        
        
        ChangeCalculator * calculator1 = [[ChangeCalculator alloc]initWithTransactionTotal:1787 cashGiven:2000];
        ChangeCalculator * calculator2 = [[ChangeCalculator alloc]initWithTransactionTotal:2623 cashGiven:4000];
        ChangeCalculator * calculator3 = [[ChangeCalculator alloc]initWithTransactionTotal:501 cashGiven:1000];
        
        CaseMaker *maker3 = [[CaseMaker alloc] initWithString:@"Hello world"];
        NSLog(@"%@", [maker3 process]);
        CaseMaker *maker1 = [[CaseMaker alloc] initWithString:@"this is a string"];
        NSLog(@"%@", [maker1 process]);
        
        CaseMaker *maker2 = [[CaseMaker alloc] initWithString:@"loopy lighthouse"];
        NSLog(@"%@", [maker2 process]);
        
        CaseMaker *maker4 = [[CaseMaker alloc] initWithString:@"supercalifragalisticexpialidocious"];
        NSLog(@"%@", [maker4 process]);
        
        NSLog(@"%@",[calculator1 calculateChange]);
        NSLog(@"%@",[calculator2 calculateChange]);
        NSLog(@"%@",[calculator3 calculateChange]);
        
        //Used a category of NSString to achieve correct output
        NSLog(@"%@", @"this is a string".camelcaseString);
        NSLog(@"%@", @"loopy lighthouse".camelcaseString);
        NSLog(@"%@", @"supercalifragalisticexpialidocious".camelcaseString);
        //NSLog(@"%@", @"HELLO BRO".process);
        
        
        
        
        NSLog(@"\n%@", [MultiplicationTableBuilder drawTable:1]);
        NSLog(@"\n%@", [MultiplicationTableBuilder drawTable:5]);
        NSLog(@"\n%@", [MultiplicationTableBuilder drawTable:10]);
        
        
        
    }
    return 0;
}




