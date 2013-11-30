//
//  txMainViewController.h
//  TXDatePickerDemo
//
//  Created by tingxuan.qhm on 13-11-30.
//  Copyright (c) 2013年 tingxuan.qhm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "txHeaderView.h"
#import "txContentView.h"

@interface txMainViewController : UIViewController
@property(nonatomic,strong) txHeaderView *headerView;
@property(nonatomic,strong) txContentView *contentView;

@end
