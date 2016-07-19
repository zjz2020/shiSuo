//
//  ViewController.m
//  ShiShuo
//
//  Created by 张君泽 on 16/7/14.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import "ViewController.h"
#import "CaptureStreamingViewController.h"
#import "LCStreamingManager.h"
#import "TestNoSkinViewController.h"

static NSString *kUserId = @"userId";
static NSString *kUserKey = @"userKey";
static NSString *kActivityId = @"activityId";
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageV = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageV.image = [UIImage imageNamed:@"22"];
    [self.view addSubview:imageV];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
