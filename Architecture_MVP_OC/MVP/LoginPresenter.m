//
//  LoginPresenter.m
//  Architecture_MVP_OC
//
//  Created by ThomsonTang on 2017/7/5.
//  Copyright © 2017年 ThomsonTang. All rights reserved.
//

#import "LoginPresenter.h"
#import "LoginModel.h"

@interface LoginPresenter()

@property(nonatomic) LoginModel *model;
@property(nonatomic) id<LoginView> view;

@end

@implementation LoginPresenter

-(void)attachView:(id<LoginView>)view{
    _view = view;
}

- (void)detachView{
    _view = nil;
}

//作用：用于管理V和M
//P层需要持有V和M的引用（指针）
-(void)loginWithName:(NSString *)name pwd:(NSString *)pwd{
    [_model loginWithName:name pwd:pwd callback:^(NSString *result) {
        //  回调UI层
        if (_view != nil) {
            [_view OnLoginResult:result];
        }
    }];
}
@end
