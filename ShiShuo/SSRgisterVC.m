//
//  SSRgisterVC.m
//  ShiShuo
//
//  Created by 张君泽 on 16/7/14.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import "SSRgisterVC.h"

@interface SSRgisterVC ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *phoneTextF;
@property (weak, nonatomic) IBOutlet UITextField *passWordTextF;
@property (weak, nonatomic) IBOutlet UITextField *rPassWordTextF;

@end

@implementation SSRgisterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"注册";
    self.phoneTextF.delegate = self;
    self.passWordTextF.delegate = self;
    self.rPassWordTextF.delegate = self;
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)registerAccount:(id)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_phoneTextF resignFirstResponder];
    [_passWordTextF resignFirstResponder];
    [_phoneTextF resignFirstResponder];
}
#pragma mark UITextFieldDelegate
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if ([textField isEqual:_rPassWordTextF]) {
        self.view.y = - 5 *Space;
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
