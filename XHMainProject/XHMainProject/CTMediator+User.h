//
//  CTMediator+User.h
//  XHMainProject
//
//  Created by XH on 2018/12/13.
//  Copyright © 2018年 XH. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (User)

- (UIViewController *)mdeiator_userContentText:(NSString *)contentText
                                     callBlock:(void (^)(NSDictionary *))callBlock;
@end

NS_ASSUME_NONNULL_END
