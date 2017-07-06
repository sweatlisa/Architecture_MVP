//
//  LoginPresenter.h
//  Architecture_MVP_OC
//
//  Created by ThomsonTang on 2017/7/5.
//  Copyright © 2017年 ThomsonTang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginView.h"

//P层：作用是用于管理V和M
@interface LoginPresenter : NSObject

//绑定view
- (void)attachView:(id<LoginView>)view;
//解绑view
- (void)detachView;

//提供一个登录的业务方法
- (void)loginWithName:(NSString *)name pwd:(NSString *)pwd;
@end
