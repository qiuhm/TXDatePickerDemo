//
//  txMainViewController.m
//  TXDatePickerDemo
//
//  Created by tingxuan.qhm on 13-11-30.
//  Copyright (c) 2013年 tingxuan.qhm. All rights reserved.
//

#import "txMainViewController.h"

@interface txMainViewController ()

@end

@implementation txMainViewController
@synthesize headerView;
@synthesize contentView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.headerView = [[txHeaderView alloc] initWithFrame:CGRectMake(0, 20, 320, 30)];
        self.headerView.headerLabel.text = [NSString stringWithFormat:@"请选择时间:"];
        self.headerView.headerLabel.textColor = [UIColor blackColor];
        [self.view addSubview:headerView];
        self.contentView = [[txContentView alloc]initWithFrame:CGRectMake(0, 100, 320, 430)];
        [self.contentView.txDatePicker addTarget:self action:@selector(dateChanged:)forControlEvents:UIControlEventValueChanged];
        
        
       
        [self.view addSubview:contentView];
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma -
#pragma datePicker
- (void)dateChanged:(id)sender
{
//    self.headerView.headerLabel.text = [self.contentView.txDatePicker.date description];
    self.contentView.resultLabel.text = [NSString stringWithFormat:@"您选择的时间是：%@",[self.contentView.txDatePicker.date description]];
}

@end
