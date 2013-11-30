//
//  txHeaderView.m
//  TXDatePickerDemo
//
//  Created by tingxuan.qhm on 13-11-30.
//  Copyright (c) 2013年 tingxuan.qhm. All rights reserved.
//

#import "txHeaderView.h"

@implementation txHeaderView
@synthesize headerLabel;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.headerLabel = [[UILabel alloc] initWithFrame:self.bounds];

        self.headerLabel.backgroundColor = [UIColor redColor];
        [self addSubview:self.headerLabel];
        
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
