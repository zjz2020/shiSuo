//
//  SSBarVC.m
//  ShiShuo
//
//  Created by 张君泽 on 16/7/14.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import "SSBarVC.h"
#import "MineVC.h"
#import "ActivityViewController.h"
@interface SSBarVC ()

@end

@implementation SSBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatTabBar];
    // Do any additional setup after loading the view.
}
- (void)creatTabBar{
    MineVC *homeC = [[MineVC alloc] init];
    UINavigationController *navC1 = [[UINavigationController alloc] initWithRootViewController:homeC];
    ActivityViewController *attendC = [[ActivityViewController alloc] init];
    UINavigationController *navC2 = [[UINavigationController alloc] initWithRootViewController:attendC];
    self.viewControllers = @[navC1,navC2];
    homeC.title = @"我的";
    attendC.title = @"活动";
    UIImage *image1 = [UIImage imageWithCGImage:[UIImage imageNamed:@""].CGImage scale:5.0 orientation:UIImageOrientationUp];
    UIImage *image11 = [UIImage imageWithCGImage:[UIImage imageNamed:@""].CGImage scale:5.0 orientation:UIImageOrientationUp];
    navC1.tabBarItem.image = [image1 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    navC1.tabBarItem.selectedImage = [image11 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *image2 = [UIImage imageWithCGImage:[UIImage imageNamed:@""].CGImage scale:5.0 orientation:UIImageOrientationUp];
    UIImage *image22 = [UIImage imageWithCGImage:[UIImage imageNamed:@""].CGImage scale:5.0 orientation:UIImageOrientationUp];
    navC2.tabBarItem.image = [image2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    navC2.tabBarItem.selectedImage = [image22 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
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
