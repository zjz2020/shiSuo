//
//  SSPersonModel.h
//  ShiShuo
//
//  Created by 张君泽 on 16/7/15.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SSPersonModel : NSObject
///用户昵称
@property (nonatomic, copy)NSString *uName;
///用户ID
@property (nonatomic, copy)NSString *userID;
///用户手机号
@property (nonatomic, copy)NSString *uPhoneNum;
///用户图片链接
@property (nonatomic, copy)NSString *uPhotoUrl;
///用户签名
@property (nonatomic, copy)NSString *uSign;

@end
