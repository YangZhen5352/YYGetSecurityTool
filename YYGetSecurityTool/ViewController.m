//
//  ViewController.m
//  YYGetSecurityTool
//
//  Created by 杨振 on 16/4/18.
//  Copyright © 2016年 yangzhen5352. All rights reserved.
//

#import "ViewController.h"
#import "YYGetSecurityTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 保存：用户的openId
    [[NSUserDefaults standardUserDefaults] setObject:@"1223sdfasfasdfa232" forKey:@"openId"];
    
    // 加密的内容
    NSString *content = @"abcdwefa刘天正1234";
    NSLog(@"原始内容 = %@", content);
    
    // 加密
    NSString *security = [YYGetSecurityTool Datasecurity:content];
    NSLog(@"加密内容 = %@", security);
    
    // 解密
    NSString *desecurity = [YYGetSecurityTool DataDesecurity:security];
    NSLog(@"解密结果 = %@", desecurity);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
