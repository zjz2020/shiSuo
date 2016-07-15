//
//  SSModel.m
//  ShiShuo
//
//  Created by 张君泽 on 16/7/14.
//  Copyright © 2016年 CloudEducation. All rights reserved.
//

#import "SSModel.h"
#import "NetWorkManage.h"


@implementation SSModel

#pragma mark - Common_JavaScriptObjectiveCDelegate

-(BOOL)isConnected{
    BOOL isConnected = [NetWorkManage isConnectionAvailable];
    SSLog(@"isConnected = %@",[NSNumber numberWithBool:isConnected]);
    return isConnected;
}

@end
