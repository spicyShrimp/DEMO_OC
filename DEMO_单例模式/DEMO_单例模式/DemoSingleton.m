//
//  DemoSingleton.m
//  DEMO_单例模式
//
//  Created by charles on 2017/4/19.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "DemoSingleton.h"

@implementation DemoSingleton

singleton_implementation(DemoSingleton);


//static DemoSingleton *_instance = nil;
//
//+(instancetype)sharedDemoSingleton{
//    
//    
////    NSLock *lock = [[NSLock alloc]init];
////    [lock lock];
////    if (_instance == nil) {
////        _instance = [[self alloc]init];
////    }
////    [lock unlock];
////    return instance;
//    
//    
////    @synchronized (self) {
////        if (_instance == nil) {
////            _instance = [[self alloc]init];
////        }
////        return _instance;
////    }
//    
//    
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        _instance = [[self alloc]init];
//    });
//    return _instance;
//}
//
//
//+(instancetype)allocWithZone:(struct _NSZone *)zone{
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        _instance = [super allocWithZone:zone];
//    });
//    return _instance;
//}
//
//-(id)copyWithZone:(NSZone *)zone
//{
//    return _instance;
//}
//
//-(id)mutableCopyWithZone:(NSZone *)zone
//{
//    return _instance;
//}

@end
