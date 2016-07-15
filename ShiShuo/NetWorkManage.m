//
//  NetWorkManage.m
//  CloudEducation
//
//  Created by hehe on 16/1/15.
//  Copyright © 2016年 AngelDawn. All rights reserved.
//

#import "NetWorkManage.h"
#import "Reachability.h"

@implementation NetWorkManage
+(BOOL)isConnectionAvailable{
    BOOL isExistenceNetwork = YES;
    Reachability *reach = [Reachability reachabilityWithHostName:@"www.baidu.com"];
    switch ([reach currentReachabilityStatus]) {
        case NotReachable:
            isExistenceNetwork = NO;
            //NSLog(@"notReachable");
            break;
        case ReachableViaWiFi:
            isExistenceNetwork = YES;
            //NSLog(@"WIFI");
            break;
        case ReachableViaWWAN:
            isExistenceNetwork = YES;
            //NSLog(@"3G");
            break;
    }
    return isExistenceNetwork;
}
@end
