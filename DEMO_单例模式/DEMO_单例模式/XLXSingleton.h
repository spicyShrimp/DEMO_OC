//
//  XLXSingleton.h
//  DEMO_单例模式
//
//  Created by charles on 2017/4/19.
//  Copyright © 2017年 charles. All rights reserved.
//

#ifndef XLXSingleton_h
#define XLXSingleton_h

// @interface
#define singleton_interface(className) \
+ (instancetype)shared##className;


// @implementation
#define singleton_implementation(className) \
static className *_instance; \
+ (instancetype)shared##className \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [[self alloc] init]; \
}); \
return _instance; \
} \
+ (instancetype)allocWithZone:(NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
return _instance; \
} \
- (instancetype)copyWithZone:(NSZone *)zone{ \
return _instance; \
} \
- (instancetype)mutableCopyWithZone:(NSZone *)zone{ \
return _instance; \
}


#endif /* XLXSingleton_h */
