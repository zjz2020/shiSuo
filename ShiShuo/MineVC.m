//
//  MineVC.m
//  ShiShuo
//
//  Created by 张君泽 on 16/7/14.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import "MineVC.h"

@interface MineVC ()

@end

@implementation MineVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我的";
    self.view.backgroundColor = [UIColor orangeColor];
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    button.frame = CGRectMake(100, 100, 100, 100);
//    [button addTarget:self action:@selector(downMP3) forControlEvents:UIControlEventTouchUpInside];
//    button.backgroundColor = [UIColor redColor];
//    [self.view addSubview:button];
    // Do any additional setup after loading the view.
}
- (void)downMP3{
    NSString *filePath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject;
    NSString *wavPath = [filePath stringByAppendingPathComponent:@"abc.wav"];
    NSLog(@"%@",wavPath);
    NSString *wav = @"http://cun.xgt.cc/audio/39_151_20160714160512.wav";
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:wav]];
    [data writeToFile:wavPath atomically:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
