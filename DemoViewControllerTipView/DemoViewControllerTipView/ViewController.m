//
//  ViewController.m
//  DemoViewControllerTipView
//
//  Created by GuJitao on 2018/4/30.
//  Copyright © 2018年 Gu. All rights reserved.
//

#import "ViewController.h"
#import <VTStatusTipModel.h>
#import <UIViewController+StatusTip.h>
#import "DemoTipModelFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.translucent = NO;
    [self registerStatusTip];
    [self registerStatusBlock:@"404" block:^{
        NSLog(@"404 operation");
    }];
    
    [self registerStatusBlock:@"NetDisconnet" block:^{
        NSLog(@"Disconnect operation");
    }];
    
    UIView *sv405 = [[UIView alloc] initWithFrame:CGRectZero];
    [self registerStatusView:sv405 forCode:@"405"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button404Clicked:(id)sender {
    [self showStatusView:@"404"];
}

- (IBAction)buttonNoNetworkingClicked:(id)sender {
    [self showStatusView:@"NetDisconnet"];
}

- (void)registerStatusTip {
    NSArray *tipModelArray = [DemoTipModelFactory demoTipModelArray];
    //[self registerStatusTipArray:tipModelArray];
    [self registerStatusTipArray:tipModelArray];
}


@end
