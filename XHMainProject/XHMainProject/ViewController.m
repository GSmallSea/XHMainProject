//
//  ViewController.m
//  XHMainProject
//
//  Created by XH on 2018/12/12.
//  Copyright © 2018年 XH. All rights reserved.
//

#import "ViewController.h"
#import <Model.h>
#import "CTMediator+User.h"
@interface ViewController ()
@property (nonatomic, strong) UIButton *pushBViewControllerButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Model *m = [[Model alloc] init];
    NSLog(@"%d",[m getWidth]);
    [self.view addSubview:[self pushBViewControllerButton]];
    [m getModel];
   
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didTappedPushBViewControllerButton:(UIButton *)button{
    
   UIViewController *vc = [[CTMediator sharedInstance] mdeiator_userContentText:@"哈哈哈" callBlock:^(NSDictionary * _Nonnull info ) {
        NSLog(@"info_______%@",info);
    }];
    [self.navigationController pushViewController:vc animated:YES];
    
}
#pragma mark - getters and setters
- (UIButton *)pushBViewControllerButton
{
    if (_pushBViewControllerButton == nil) {
        _pushBViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushBViewControllerButton setTitle:@"push B view controller" forState:UIControlStateNormal];
        _pushBViewControllerButton.frame = CGRectMake(100, 100, 100, 100);
        [_pushBViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushBViewControllerButton addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushBViewControllerButton;
}


@end
