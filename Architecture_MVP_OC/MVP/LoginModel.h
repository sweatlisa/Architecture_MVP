//
//  LoginModel.h
//  Architecture_MVP_OC
//
//  Created by ThomsonTang on 2017/7/5.
//  Copyright © 2017年 ThomsonTang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpUtils.h"

//M层（数据层）
@interface LoginModel : NSObject

//业务方法
- (void)loginWithName:(NSString *)name pwd:(NSString *)pwd callback:(Callback)callback;

@end
