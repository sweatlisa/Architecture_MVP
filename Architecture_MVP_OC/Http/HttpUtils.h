//
//  HttpUtils.h
//  Architecture_MVP_OC
//
//  Created by ThomsonTang on 2017/7/5.
//  Copyright © 2017年 ThomsonTang. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^Callback)(NSString *result);

@interface HttpUtils : NSObject

//提供一个请求服务器的方法
+ (void)postWithName:(NSString *)name pwd:(NSString *)pwd callback:(Callback)callback;

@end
