//
//  ViewController.m
//  DEMO_单例模式
//
//  Created by charles on 2017/4/19.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "ViewController.h"
#import "DemoSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    DemoSingleton *singleton1 = [DemoSingleton sharedDemoSingleton];
    NSLog(@"%@",singleton1);
    
    DemoSingleton *singleton2 = [DemoSingleton sharedDemoSingleton];
    NSLog(@"%@",singleton2);
    
    DemoSingleton *singleton3 = [DemoSingleton allocWithZone:nil];
    NSLog(@"%@",singleton3);
    
    DemoSingleton *singleton4 = [[DemoSingleton alloc]init];
    NSLog(@"%@",singleton4);
    
    DemoSingleton *singleton5 = [singleton4 copy];
    NSLog(@"%@",singleton5);
    
    DemoSingleton *singleton6 = [singleton5 mutableCopy];
    NSLog(@"%@",singleton6);
    
    
    //系统常用的一些单例
    UIApplication *application = [UIApplication sharedApplication];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSFileManager *manager = [NSFileManager defaultManager];
    
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    
    NSURLCache *cache = [NSURLCache sharedURLCache];
    
    NSHTTPCookieStorage *storage = [NSHTTPCookieStorage sharedHTTPCookieStorage];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
