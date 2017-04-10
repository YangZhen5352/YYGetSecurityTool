//
//  NSString+HMAC.h
//  rest
//
//  Created by masonneil on 15/8/28.
//  Copyright (c) 2015年 masonneil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (HMAC)

// secret:机密符号
-(NSString *) HMACWithSecret:(NSString *) secret;
@end
