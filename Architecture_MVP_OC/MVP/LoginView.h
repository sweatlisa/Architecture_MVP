//
//  LoginView.h
//  Architecture_MVP_OC
//
//  Created by ThomsonTang on 2017/7/5.
//  Copyright © 2017年 ThomsonTang. All rights reserved.
//

#import <Foundation/Foundation.h>

//登录功能业务协议
@protocol LoginView <NSObject>

- (void)OnLoginResult:(NSString *)result;
@end
