//
//  txContentView.m
//  TXDatePickerDemo
//
//  Created by tingxuan.qhm on 13-11-30.
//  Copyright (c) 2013年 tingxuan.qhm. All rights reserved.
//

#import "txContentView.h"
#define MINUTEINTERVAL 10;  //设置时间间隔

@implementation txContentView
@synthesize txDatePicker ;
@synthesize resultLabel ;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.txDatePicker = [[UIDatePicker alloc]initWithFrame:self.bounds];
        self.txDatePicker.datePickerMode = UIDatePickerModeDate ; //设置样式
        self.txDatePicker.minuteInterval = MINUTEINTERVAL;
        self.txDatePicker.timeZone = [NSTimeZone timeZoneWithName:@"GMT"];
        self.txDatePicker.locale = [[NSLocale alloc]initWithLocaleIdentifier:@"zh_CN"];
        self.txDatePicker.minimumDate = [NSDate dateWithTimeIntervalSince1970:0];
        self.txDatePicker.maximumDate = [NSDate dateWithTimeIntervalSinceNow:300000];
        self.resultLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 250, 320, 50)];
        self.resultLabel.text = [NSString stringWithFormat:@"您选择的时间是："];
        self.resultLabel.adjustsFontSizeToFitWidth = YES;


        [self addSubview:self.txDatePicker];
        [self addSubview:self.resultLabel];
        
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
