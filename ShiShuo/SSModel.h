//
//  SSModel.h
//  ShiShuo
//
//  Created by 张君泽 on 16/7/14.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <JavaScriptCore/JavaScriptCore.h>
///JS代理
@protocol JavaScriptObjectiveCDelegate <JSExport>
///是否连接
-(BOOL)isConnected;

@end

///model代理
@protocol SSModelDelegate <NSObject>

@optional

@end


@interface SSModel : NSObject<JavaScriptObjectiveCDelegate>
@property(nonatomic,weak)id delegate;
@end
