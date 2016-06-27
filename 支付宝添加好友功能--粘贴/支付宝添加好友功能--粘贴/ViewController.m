//
//  ViewController.m
//  支付宝添加好友功能--粘贴
//
//  Created by mac on 16/6/27.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIPasteboard *pasteboard;
}
- (IBAction)paste:(UIButton *)sender;
- (IBAction)copy:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UITextField *infotextfield;

@property (weak, nonatomic) IBOutlet UILabel *infolable;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    pasteboard = [UIPasteboard generalPasteboard];
    self.infotextfield.text = @"##魏忠海#！";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)paste:(UIButton *)sender {
    self.infolable.text = pasteboard.string;
}

- (IBAction)copy:(UIButton *)sender {
    [pasteboard setValue:self.infotextfield.text forPasteboardType:UIPasteboardTypeListString[0]];
}
@end
