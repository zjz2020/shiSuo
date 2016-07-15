//
//  SSsubViewC.m
//  ShiShuo
//
//  Created by 张君泽 on 16/7/15.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import "SSsubViewC.h"

@interface SSsubViewC ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *userImage;
@property (weak, nonatomic) IBOutlet UILabel *userNameL;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation SSsubViewC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTheTableView];
    // Do any additional setup after loading the view from its nib.
}
- (void)setTheTableView{
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    //注册
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    _tableView.rowHeight = 44;
}
#pragma mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    NSArray *array = @[@"照片",@"文章",@"个人中心",@"直播间"];
    cell.textLabel.text = array[indexPath.row];
    return cell;
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
