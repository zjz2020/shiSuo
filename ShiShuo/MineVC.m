//
//  MineVC.m
//  ShiShuo
//
//  Created by 张君泽 on 16/7/14.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import "MineVC.h"
#import "SSsubViewC.h"
#import "OpenCell.h"
@interface MineVC ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong)SSsubViewC *subVC;
@property (nonatomic, strong)UITableView *tableView;
@end

@implementation MineVC
- (void)viewWillAppear:(BOOL)animated{
    if (self.subVC) {
        self.subVC.view.x = -200;
    }

}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"大厅";
    self.view.backgroundColor = [UIColor orangeColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(clicleLeftBtn:)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(clicleRightBtn:)];
    [self setTheTableView];
    [self addSubView];
    [self addPanGestureRecognizer];
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    button.frame = CGRectMake(100, 100, 100, 100);
//    [button addTarget:self action:@selector(downMP3) forControlEvents:UIControlEventTouchUpInside];
//    button.backgroundColor = [UIColor redColor];
//    [self.view addSubview:button];
    // Do any additional setup after loading the view.
}
- (void)setTheTableView{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    [_tableView registerNib:[UINib nibWithNibName:NSStringFromClass([OpenCell class]) bundle:nil] forCellReuseIdentifier:@"cell"];
    _tableView.rowHeight = 80;
}
- (void)downMP3{
    NSString *filePath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject;
    NSString *wavPath = [filePath stringByAppendingPathComponent:@"abc.wav"];
    NSLog(@"%@",wavPath);
    NSString *wav = @"http://cun.xgt.cc/audio/39_151_20160714160512.wav";
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:wav]];
    [data writeToFile:wavPath atomically:YES];
}
//添加平移手势
- (void)addPanGestureRecognizer{
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveWithPan:)];
    [self.view addGestureRecognizer:panGesture];

}
- (void)moveWithPan:(UIPanGestureRecognizer *)gesture{
    CGPoint point = [gesture translationInView:self.view];
    if (point.x > 10) {
        [UIView animateWithDuration:0.3 animations:^{
             self.subVC.view.x = 0;
        }];
    }else if(point.x < -10){
        [UIView animateWithDuration:0.3 animations:^{
            self.subVC.view.x = -200;
        }];
    }
    
}
- (void)clicleLeftBtn:(UIBarButtonItem *)sender{//二级菜单
    [UIView animateWithDuration:0.3 animations:^{
        self.subVC.view.x = 0;
    }];
}
- (void)addSubView{
    self.subVC = [[SSsubViewC alloc] initWithNibName:NSStringFromClass([SSsubViewC class]) bundle:nil];
    _subVC.view.x = -200;
    [self addChildViewController:_subVC];
    [self.view addSubview:_subVC.view];
}
- (void)clicleRightBtn:(UIBarButtonItem *)sender{//拍照
    
}
#pragma mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 30;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.backgroundColor = [UIColor cyanColor];
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
