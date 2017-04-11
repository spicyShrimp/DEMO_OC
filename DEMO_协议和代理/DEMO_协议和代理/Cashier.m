//
//  Cashier.m
//  DEMO_协议和代理
//
//  Created by charles on 2017/4/11.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "Cashier.h"

@implementation Cashier

-(void)cashier{
    NSLog(@"开始收银");
    sleep(2);
    NSLog(@"一天结束了,收银也结束了");
    
    if ([_delegate respondsToSelector:@selector(finishCahsier)]) {
        [_delegate finishCahsier];
    }
}

@end
