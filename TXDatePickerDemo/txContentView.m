//
//  txContentView.m
//  TXDatePickerDemo
//
//  Created by tingxuan.qhm on 13-11-30.
//  Copyright (c) 2013年 tingxuan.qhm. All rights reserved.
//

#import "txContentView.h"
#define MINUTEINTERVAL 10;  //设置时间设置间隔

@implementation txContentView
@synthesize txDatePicker ;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.txDatePicker = [[UIDatePicker alloc]initWithFrame:self.bounds];
        self.txDatePicker.datePickerMode = UIDatePickerModeDateAndTime ; //设置样式
        self.txDatePicker.minuteInterval = MINUTEINTERVAL;
        self.txDatePicker.timeZone = [NSTimeZone timeZoneWithName:@"GMT"];
        self.txDatePicker.locale = [[NSLocale alloc]initWithLocaleIdentifier:@"chinese"];
        self.txDatePicker.minimumDate = [NSDate dateWithTimeIntervalSince1970:0];
        self.txDatePicker.maximumDate = [NSDate dateWithTimeIntervalSinceNow:30000];


        [self addSubview:self.txDatePicker];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
