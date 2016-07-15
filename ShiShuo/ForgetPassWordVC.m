//
//  ForgetPassWordVC.m
//  ShiShuo
//
//  Created by 张君泽 on 16/7/14.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import "ForgetPassWordVC.h"

@interface ForgetPassWordVC ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *phoneTextF;
@property (weak, nonatomic) IBOutlet UITextField *VerificationCodeTF;
@property (weak, nonatomic) IBOutlet UITextField *NewPassWord;

@property (weak, nonatomic) IBOutlet UITextField *rNewPassWord;
@end

@implementation ForgetPassWordVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"忘记密码";
    self.phoneTextF.delegate = self;
    self.VerificationCodeTF.delegate = self;
    self.NewPassWord.delegate = self;
    self.rNewPassWord.delegate = self;
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)Verification:(UIButton *)sender {
}
- (IBAction)ok:(UIButton *)sender {
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_phoneTextF resignFirstResponder];
    [_VerificationCodeTF resignFirstResponder];
    [_NewPassWord resignFirstResponder];
    [_rNewPassWord resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark UITextFieldDelegate
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if ([textField isEqual:_NewPassWord]) {
        self.view.y = - 5 *Space;
    }else if ([textField isEqual:_rNewPassWord]){
        self.view.y = - 10 *Space;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.view.y = 0;
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
