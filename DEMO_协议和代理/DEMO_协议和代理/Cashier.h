//
//  Cashier.h
//  DEMO_协议和代理
//
//  Created by charles on 2017/4/11.
//  Copyright © 2017年 charles. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CashierDelegate <NSObject>

/**
 完成收银
 */
-(void)finishCahsier;

@end

@interface Cashier : NSObject
@property (nonatomic, assign)id<CashierDelegate> delegate;
/**
 收银
 */
-(void)cashier;

@end
