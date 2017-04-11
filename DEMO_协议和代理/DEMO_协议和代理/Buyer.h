//
//  Buyer.h
//  DEMO_协议和代理
//
//  Created by charles on 2017/4/11.
//  Copyright © 2017年 charles. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BuyerDelegate <NSObject>

/**
 完成采购
 */
-(void)finishReplenish;

@end

@interface Buyer : NSObject

@property (nonatomic, assign)id<BuyerDelegate> delegate;

/**
 采购
 */
-(void)replenish;

@end
