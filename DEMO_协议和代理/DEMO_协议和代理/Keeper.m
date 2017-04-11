//
//  Keeper.m
//  DEMO_协议和代理
//
//  Created by charles on 2017/4/11.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "Keeper.h"

@implementation Keeper

-(void)shelves{
    NSLog(@"开始上架");
    sleep(2);
    NSLog(@"上架完成");
    if ([_delegate respondsToSelector:@selector(finishShelves)]) {
        [_delegate finishShelves];
    }
}

@end
