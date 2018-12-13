//
//  BViewController.h
//  XHMainProject-User
//
//  Created by XH on 2018/12/13.
//  Copyright © 2018年 XH. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void (^CTUrlRouterCallbackBlock)(NSDictionary *info);

@interface BViewController : UIViewController

- (instancetype)initWithContentText:(NSString *)contentText
                routerCallbackBlock:(CTUrlRouterCallbackBlock)CallbackBlock;

@end

NS_ASSUME_NONNULL_END
