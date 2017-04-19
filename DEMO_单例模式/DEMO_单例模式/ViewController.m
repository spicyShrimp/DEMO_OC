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
    
    DemoSingleton *singleton2 = [[DemoSingleton alloc]init];
    NSLog(@"%@",singleton2);
    
    DemoSingleton *singLeton3 = [singleton2 copy];
    NSLog(@"%@",singLeton3);
    
    DemoSingleton *singLeton4 = [DemoSingleton allocWithZone:nil];
    NSLog(@"%@",singLeton4);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
