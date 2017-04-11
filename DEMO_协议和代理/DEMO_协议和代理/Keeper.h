//
//  Keeper.h
//  DEMO_协议和代理
//
//  Created by charles on 2017/4/11.
//  Copyright © 2017年 charles. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol KeeperDelegate <NSObject>

/**
 完成上架
 */
-(void)finishShelves;

@end

@interface Keeper : NSObject
@property (nonatomic, assign)id<KeeperDelegate> delegate;

/**
 上架
 */
-(void)shelves;

@end
