//
//  Boss.m
//  DEMO_协议和代理
//
//  Created by charles on 2017/4/11.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "Boss.h"
#import "Buyer.h"
#import "Keeper.h"
#import "Cashier.h"

@interface Boss ()<BuyerDelegate,KeeperDelegate,CashierDelegate>

@property (nonatomic, strong)Buyer *zhangsan;
@property (nonatomic, strong)Keeper *lisi;
@property (nonatomic, strong)Cashier *wangwu;
@end

@implementation Boss
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"开始招聘\n");
        [self recruit];//开始招聘
    }
    return self;
}
/**
 开始招聘
 */
-(void)recruit{
    _zhangsan = [[Buyer alloc]init];
    _zhangsan.delegate = self;
    NSLog(@"找到一个采购员,张三\n");
    
    _lisi = [[Keeper alloc]init];
    _lisi.delegate = self;
    NSLog(@"找到一个管理员,李四\n");
    
    _wangwu = [[Cashier alloc]init];
    _wangwu.delegate = self;
    NSLog(@"找到一个收银员,王五\n");
    
    NSLog(@"完成招聘\n");
    
    NSLog(@"开始工作\n");
    [self startWork];
}

-(void)startWork{
    NSLog(@"老王:张三去采购吧\n");
    [_zhangsan replenish];
}
/**
 张三完成了采购
 */
-(void)finishReplenish{
    NSLog(@"老王:张三你可以休息了,我叫李四上架\n");
    NSLog(@"老王:李四上架去吧\n");
    [_lisi shelves];//李四上架
}
/**
 李四完成了上架
 */
-(void)finishShelves{
    NSLog(@"老王:李四你也可以休息了\n");
    NSLog(@"老王:接下来的收银工作都交给你了,王五\n");
    [_wangwu cashier];//王五开始收银
}
/**
 王五完成了收银
 */
-(void)finishCahsier{
    NSLog(@"老王:王五,辛苦了一天,早点回家吧");
}


@end
