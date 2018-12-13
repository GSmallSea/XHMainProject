//
//  CTMediator+User.m
//  XHMainProject
//
//  Created by XH on 2018/12/13.
//  Copyright © 2018年 XH. All rights reserved.
//

#import "CTMediator+User.h"

@implementation CTMediator (User)


- (UIViewController *)mdeiator_userContentText:(NSString *)contentText
                                     callBlock:(void (^)(NSDictionary *))callBlock{
    
    NSDictionary *prama = @{
                            @"contentText":contentText,
                            @"Callback":callBlock
                            };
    
    return [self performTarget:@"User"
                        action:@"viewController"
                        params:prama
             shouldCacheTarget:NO];
    
}

@end
