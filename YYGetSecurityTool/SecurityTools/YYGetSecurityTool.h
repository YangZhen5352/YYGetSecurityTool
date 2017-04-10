//
//  YYGetSecurityTool.h
//  YYGetSecurityTool
//
//  Created by 杨振 on 16/4/18.
//  Copyright © 2016年 yangzhen5352. All rights reserved.

/*
 // 保存：用户的openId
 [[NSUserDefaults standardUserDefaults] setObject:@"12ssddsfsdwe23232" forKey:@"openId"];
 */

#import <Foundation/Foundation.h>

@interface YYGetSecurityTool : NSObject

/**
 *   数据解密
 */
+(NSString *)DataDesecurity:(NSString *)securityString;

/**
 *   数据加密
 */
+(NSString *)Datasecurity:(NSString *)securityString;

@end
