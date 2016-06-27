//
//  ViewController.m
//  支付宝添加好友功能--在需要的时候获取剪切板
//
//  Created by mac on 16/6/27.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIPasteboard *pasteboard;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    pasteboard = [UIPasteboard generalPasteboard];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationDidBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
}
- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSRange range = [pasteboard.string rangeOfString:@"##魏忠海#！"];
    if (range.location != NSNotFound && pasteboard.string.length > 0) {
        [[[UIAlertView alloc]initWithTitle:@"提示" message:[NSString stringWithFormat:@"您是否要添加%@为好友",[pasteboard.string stringByReplacingOccurrencesOfString:@"##魏忠海#！" withString:@""]] delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil] show];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
