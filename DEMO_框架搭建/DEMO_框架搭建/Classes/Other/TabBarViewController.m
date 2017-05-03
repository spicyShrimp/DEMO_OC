//
//  TabBarViewController.m
//  DEMO_框架搭建
//
//  Created by charles on 2017/5/3.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "TabBarViewController.h"
#import "WechatViewController.h"
#import "ContactViewController.h"
#import "DiscoverViewController.h"
#import "MineViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    WechatViewController *wechatVC=[[WechatViewController alloc]init];
    [self addChildViewController:wechatVC withTitle:@"微信" image:[UIImage imageNamed:@"TabBarIconMyNormal"] selectedImage:[UIImage imageNamed:@"TabBarIconMy"]];
    
    ContactViewController *contactVC=[[ContactViewController alloc]init];
    [self addChildViewController:contactVC withTitle:@"通讯录" image:[UIImage imageNamed:@"TabBarIconMyNormal"] selectedImage:[UIImage imageNamed:@"TabBarIconMy"]];
    
    DiscoverViewController *discoverVC=[[DiscoverViewController alloc]init];
    [self addChildViewController:discoverVC withTitle:@"发现" image:[UIImage imageNamed:@"TabBarIconMyNormal"] selectedImage:[UIImage imageNamed:@"TabBarIconMy"]];
    
    MineViewController *mineVC = [[MineViewController alloc]init];
    [self addChildViewController:mineVC withTitle:@"我" image:[UIImage imageNamed:@"TabBarIconMyNormal"] selectedImage:[UIImage imageNamed:@"TabBarIconMy"]];
}

    /**
     *  添加子控制器到tabbar,并封装一个navgationbar
     *
     *  @param childController 子控制器对象
     *  @param title           子控制器标题
     *  @param image           tabbaritem正常图片
     *  @param selectedImage   tabbaritem选中图片
     */
-(void)addChildViewController:(UIViewController *)childController withTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage{
    childController.tabBarItem=[[UITabBarItem alloc]initWithTitle:title image:image selectedImage:selectedImage];
    [childController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor greenColor]} forState:UIControlStateSelected];
    /**
     给每个控制器添加一个UINavigationController
     */
    UINavigationController *navigationController=[[UINavigationController alloc]initWithRootViewController:childController];
    [self addChildViewController:navigationController];
}
    
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
