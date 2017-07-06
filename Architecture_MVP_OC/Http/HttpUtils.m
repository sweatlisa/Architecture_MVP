//
//  HttpUtils.m
//  Architecture_MVP_OC
//
//  Created by ThomsonTang on 2017/7/5.
//  Copyright © 2017年 ThomsonTang. All rights reserved.
//

#import "HttpUtils.h"

@implementation HttpUtils
+ (void)postWithName:(NSString *)name pwd:(NSString *)pwd callback:(Callback)callback{
//    创建url
    NSURL *url = [[NSURL alloc]initWithString:@"http://"];
// 创建请求
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL:url];
// 设置请求参数
    request.HTTPMethod = @"POST";
    NSString *params = [NSString stringWithFormat:@"username=%@&password=%@",name,pwd];
    request.HTTPBody = [params dataUsingEncoding:NSUTF8StringEncoding];
    
//    创建请求会话
    NSURLSession *session= [NSURLSession sharedSession];
    
//    创建请求任务
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        //        7.处理请求的结果
        if (error != nil) {
            NSLog(@"登录失败");
        } else {
            NSLog(@"登录成功");
            NSString *result = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            callback(result);
        }
    }];
    
//   6. 执行任务
    [task resume];
    
}
@end
