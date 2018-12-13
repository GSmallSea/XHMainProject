//
//  BViewController.m
//  XHMainProject-User
//
//  Created by XH on 2018/12/13.
//  Copyright © 2018年 XH. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
@property (nonatomic,copy) NSString * content;
@property (nonatomic,copy) CTUrlRouterCallbackBlock tempBlock;
@end

@implementation BViewController

- (instancetype)initWithContentText:(NSString *)contentText
                routerCallbackBlock:(nonnull CTUrlRouterCallbackBlock)CallbackBlock
{
    if (self == [super init]) {
        self.content = contentText;
        self.tempBlock = CallbackBlock;
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    if (self.tempBlock) {
        self.tempBlock(@{
                         @"Name":@"xiaoXi"
                         });
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"self.content____%@",self.content);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
