//
//  ViewController.m
//  Architecture_MVP_OC
//
//  Created by ThomsonTang on 2017/7/5.
//  Copyright © 2017年 ThomsonTang. All rights reserved.
//

#import "ViewController.h"
#import "LoginView.h"
#import "LoginPresenter.h"
@interface ViewController ()<LoginView>

@property (nonatomic)LoginPresenter *presenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _presenter = [[LoginPresenter alloc]init];
    [_presenter attachView:self];
    
    //    发起登录
    [_presenter loginWithName:@"ddd" pwd:@"000"];
}

- (void)OnLoginResult:(NSString *)result{
    NSLog(@"回调了，登录返回的结果%@",result);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    [_presenter detachView];
}


@end
