//
//  GuideVC.m
//  ShiShuo
//
//  Created by 张君泽 on 16/7/14.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import "GuideVC.h"
#import "SSLoginVC.h"
@interface GuideVC ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollV;

@end

@implementation GuideVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self makeTheGuide];
    // Do any additional setup after loading the view from its nib.
}
- (void)makeTheGuide{
    self.scrollV.contentSize = CGSizeMake(SWidth *2, SHeight);
    self.scrollV.pagingEnabled = YES;
    for (int i = 0; i < 2; i ++) {
        UIImageView *imageV = [[UIImageView alloc] initWithFrame:CGRectMake(i *SWidth, 0, SWidth, SHeight)];
        imageV.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d",i]];
        if (i == 1) {//添加点击手势
            imageV.userInteractionEnabled = YES;
            UITapGestureRecognizer *tapG = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureRecongnizer:)];
            [imageV addGestureRecognizer:tapG];
        }
        [self.scrollV addSubview:imageV];
    }
    
}

- (void)tapGestureRecongnizer:(UITapGestureRecognizer *)tapG{
    SSLoginVC *loginVC = [[SSLoginVC alloc] initWithNibName:NSStringFromClass([SSLoginVC class]) bundle:nil];
    UINavigationController *navC = [[UINavigationController alloc] initWithRootViewController:loginVC];
    [self presentViewController:navC animated:YES completion:nil];
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
