//
//  Target_User.m
//  XHMainProject-User
//
//  Created by XH on 2018/12/13.
//  Copyright © 2018年 XH. All rights reserved.
//

#import "Target_User.h"
#import "BViewController.h"


@implementation Target_User


- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    NSString *contentText = params[@"contentText"];
    CTUrlRouterCallbackBlock block = params[@"Callback"];
    BViewController *viewController = [[BViewController alloc] initWithContentText:contentText routerCallbackBlock:block];
    return viewController;
}


@end
