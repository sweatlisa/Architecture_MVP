//
//  LoginModel.m
//  Architecture_MVP_OC
//
//  Created by ThomsonTang on 2017/7/5.
//  Copyright © 2017年 ThomsonTang. All rights reserved.
//

#import "LoginModel.h"

@implementation LoginModel

-(void)loginWithName:(NSString *)name pwd:(NSString *)pwd callback:(Callback)callback{
    //    数据层：模块（网络模块，数据库模块，文件操作模块等等）
    //    调用具体的数据模块
    [HttpUtils postWithName:name pwd:pwd callback:^(NSString *result) {
        //  此处还需要很多的业务逻辑处理（比如验证，保存数据库等等）
        callback(result);
    }];
}

@end
