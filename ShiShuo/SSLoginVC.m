//
//  SSLoginVC.m
//  ShiShuo
//
//  Created by 张君泽 on 16/7/14.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import "SSLoginVC.h"
#import "SSRgisterVC.h"
#import "ForgetPassWordVC.h"
#import "SSBarVC.h"
@interface SSLoginVC ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *accountTextF;
@property (weak, nonatomic) IBOutlet UITextField *passWordTextF;

@end

@implementation SSLoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.accountTextF.delegate = self;
    self.passWordTextF.delegate = self;
    [self login];
    // Do any additional setup after loading the view from its nib.
}
- (void)login{
    NSString *account = [[NSUserDefaults standardUserDefaults] objectForKey:@"account"];
    NSString *passWord = [[NSUserDefaults standardUserDefaults] objectForKey:@"passWord"];
    self.accountTextF.text = account;
    self.passWordTextF.text = passWord;
    if (account && passWord) {
        SSBarVC *barVC = [[SSBarVC alloc] init];
        [self presentViewController:barVC animated:YES completion:nil];
    }
}
//登录
- (IBAction)login:(UIButton *)sender {
    SSBarVC *barVC = [[SSBarVC alloc] init];
    [self presentViewController:barVC animated:YES completion:nil];
}
//注册
- (IBAction)registerAccount:(UIButton *)sender {
    SSRgisterVC *registerVC = [[SSRgisterVC alloc] initWithNibName:NSStringFromClass([SSRgisterVC class]) bundle:nil];
    [self.navigationController pushViewController:registerVC animated:YES];
}
//忘记密码
- (IBAction)forgotPassWord:(UIButton *)sender {
    ForgetPassWordVC *ForgetVC = [[ForgetPassWordVC alloc] initWithNibName:NSStringFromClass([ForgetPassWordVC class]) bundle:nil];
    [self.navigationController pushViewController:ForgetVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_accountTextF resignFirstResponder];
    [_passWordTextF resignFirstResponder];
}
#pragma mark UITextFieldDelegate
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    
    if ([textField isEqual:_passWordTextF]) {
        self.view.y = -5 *Space;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.view.y = 0;
    SSLog(@"%@",textField.text);
    if ([textField isEqual:_accountTextF]) {
        [[NSUserDefaults standardUserDefaults] setObject:textField.text forKey:@"account"];
    }else{
        [[NSUserDefaults standardUserDefaults] setObject:textField.text forKey:@"passWord"];
    }
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
