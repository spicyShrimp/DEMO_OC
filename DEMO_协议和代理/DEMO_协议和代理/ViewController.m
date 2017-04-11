//
//  ViewController.m
//  DEMO_协议和代理
//
//  Created by charles on 2017/4/11.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "ViewController.h"
#import "Boss.h"

@interface ViewController ()

@property (nonatomic, strong)Boss *laowang;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _laowang = [[Boss alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
