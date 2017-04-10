//
//  YYGetSecurityTool.m
//  YYGetSecurityTool
//
//  Created by 杨振 on 16/4/18.
//  Copyright © 2016年 yangzhen5352. All rights reserved.
//

#import "YYGetSecurityTool.h"
#import "NSString+HMAC.h"
#import <Security/Security.h>
#import "SecurityUtil.h"

@implementation YYGetSecurityTool


#pragma mark 添加数据加密

+(NSString *)Datasecurity:(NSString *)securityString
{
    // 0.防止加密的内容为空值时，造成程序崩溃
    if(securityString == nil){
        return @"";
    }
    // 1.根据用户的openId进行设置key值
    NSString * openId = [[NSUserDefaults standardUserDefaults] objectForKey:@"openId"];
    
    // 2.使用哈希加密生产钥匙：key
    NSString *key = [@"46052543" HMACWithSecret:openId];
    
    // 3.获取加密的内容
    NSString *data =[NSString stringWithFormat:@"%@",securityString];
    
    // 4.根据内容和key值 获取加密后的结果值
    NSString *result =[SecurityUtil encryptAESData:data app_key:key];
    
    return result;
}


#pragma mark 添加数据解密
+(NSString *)DataDesecurity:(NSString *)securityString
{
    // 1.根据用户的openId进行设置key值
    NSString * openId = [[NSUserDefaults standardUserDefaults] objectForKey:@"openId"];
    
    // 2.使用哈希加密生产钥匙：key
    NSString *key = [@"46052543" HMACWithSecret:openId];
    
    // 3.将加密的内容转换成nsdata
    NSData *data = [[NSData alloc] initWithBase64Encoding:securityString];
    
    // 4.根据钥匙以及内容加密成result
    NSString *result =[SecurityUtil decryptAESData:data app_key:key];
    
    return result;
}
@end
