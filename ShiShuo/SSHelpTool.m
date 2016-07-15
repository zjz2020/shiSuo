//
//  SSHelpTool.m
//  ShiShuo
//
//  Created by 张君泽 on 16/7/14.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import "SSHelpTool.h"
#import "AESCrypt.h"
#import "YRJSONAdapter.h"
#define kCE_userInfo @"FCD417DE-1918-4A9E-B22E-4FABFCF3669A"
#define AESCodingPassword @"B1D1BE1F-6C95-4652-A79C-382A68DDB18C"

static SSHelpTool *instace;
@implementation SSHelpTool

+ (SSHelpTool *)shareSSHelpTool{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instace = [[self alloc] init];
    });
    return instace;
}
+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{   //onceToken是GCD用来记录是否执行过 ，如果已经执行过就不再执行(保证执行一次）
        instace = [super allocWithZone:zone];
    });
    return instace;
}
- (id)copyWithZone:(NSZone *)zone{
    return instace;
}
///保存用户名  密码
-(void)saveUserName:(NSString *)userName password:(NSString *)password{
    NSDictionary * dic = @{@"username" : userName , @"passward" : password};
    NSString * jsonString = [dic JSONString];
    NSString * aesString = [AESCrypt encrypt:jsonString password:AESCodingPassword];
    [[NSUserDefaults standardUserDefaults] setObject:aesString forKey:kCE_userInfo];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
///获取用户名 密码
-(NSDictionary *)getUserNameAndPwd{
    NSString * aesString = [[NSUserDefaults standardUserDefaults] objectForKey:kCE_userInfo];
    NSString * jsonString = [AESCrypt decrypt:aesString password:AESCodingPassword];
    NSDictionary * tempDic = [jsonString objectFromJSONString];
    return tempDic;
}
@end
