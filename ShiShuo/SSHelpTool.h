//
//  SSHelpTool.h
//  ShiShuo
//
//  Created by 张君泽 on 16/7/14.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SSHelpTool : NSObject<NSCopying>
+ (SSHelpTool *)shareSSHelpTool;
///保存用户名  密码
-(void)saveUserName:(NSString *)userName password:(NSString *)password;
///获取用户名 密码
-(NSDictionary *)getUserNameAndPwd;
@end
