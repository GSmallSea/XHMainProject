//
//  Model.m
//  XHMainProject-User
//
//  Created by XH on 2018/12/12.
//  Copyright © 2018年 XH. All rights reserved.
//

#import "Model.h"
#import <MJExtension/MJExtension.h>
#import <UIKit/UIKit.h>
@implementation Model

- (int)getHeight{
    
    return 100;
}

- (int)getWidth{
    
    return 30;
}
- (NSString *)getModel{
    return [Model mj_JSONString];
}

@end
