//
//  CHHTTPTool.m
//  AFNetworking简单封装
//
//  Created by Colin on 15-8-31.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "CHHTTPTool.h"
#import "AFNetworking.h"

@implementation CHHTTPTool

+ (void)GET:(NSString *)URLString parameters:(NSDictionary *)parameters success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure
{
    // 请求管理者
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    // 发送请求
    [manager GET:URLString parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (success)
        {
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure)
        {
            failure(error);
        }
    }];
}

+ (void)POST:(NSString *)URLString parameters:(NSDictionary *)parameters success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure
{
    // 请求管理者
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    // 发送请求
    [manager POST:URLString parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (success)
        {
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure)
        {
            failure(error);
        }
    }];
}

@end
