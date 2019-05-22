//
//  TalkingCalendar.m
//  RepeatingNumbers
//
//  Created by James Oliver on 2019-05-20.
//  Copyright © 2019 James Oliver. All rights reserved.
//

#import "TalkingCalendar.h"

@implementation TalkingCalendar


- (instancetype)initWithDate : (NSString*) date {
    _myDate = date;
    return self;
}
- (NSString *)parse {
    
    NSString *temp = _myDate;
    NSString *temp2;
    NSString *suffix = @"th";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    
    [dateFormat setDateFormat:@"YYYY-MM-dd"];
    NSDate *dte = [dateFormat dateFromString:temp];
    NSDateFormatter *dF = [[NSDateFormatter alloc] init];
    NSDateFormatter *dF2 = [[NSDateFormatter alloc] init];
    [dF setDateFormat:@"MMMM d"];
    temp = [dF stringFromDate:dte];
    [dF2 setDateFormat:@", yyyy"];
    temp2 = [dF2 stringFromDate:dte];
    if ([temp length] == 2 && [temp characterAtIndex:0] == '1') {
        return suffix;
    }
    
    switch ([temp characterAtIndex:[temp length]-1]) {
        case '1':
            suffix = @"st";
            break;
        case '2':
            suffix = @"nd";
            break;
        case '3':
            suffix = @"rd";
            break;
    }
    temp = [temp stringByAppendingString:suffix];
    temp = [temp stringByAppendingString:temp2];
    
    return (NSString*)temp;
}

@end
