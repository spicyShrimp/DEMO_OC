//
//  Buyer.m
//  DEMO_协议和代理
//
//  Created by charles on 2017/4/11.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "Buyer.h"

@implementation Buyer

-(void)replenish{
    NSLog(@"开始采购");
    sleep(2);
    NSLog(@"采购完成");
    
    if ([_delegate respondsToSelector:@selector(finishReplenish)]) {
        [_delegate finishReplenish];
    }
}

@end
