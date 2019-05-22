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
        
        
        //suffix experiment
      /*  NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        formatter.numberStyle = NSNumberFormatterOrdinalStyle;
        NSArray<NSNumber *> *numbers = @[@3, @2, @3, @2, @5];
        
        for (NSNumber *number in numbers) {
            NSLog(@"%@", [formatter stringFromNumber:number]);
        }
        // "1st", "2nd", "3rd", "4th", "5th"*/
        
        
        
        
        
    }
    return 0;
}




