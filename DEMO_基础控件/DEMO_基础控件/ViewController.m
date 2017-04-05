//
//  ViewController.m
//  DEMO_基础控件
//
//  Created by charles on 2017/4/5.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //UILabel
    UILabel *label = [[UILabel alloc]init];//初始化
    label.frame = CGRectMake(0, 20, 100, 20);//位置
    label.backgroundColor = [UIColor greenColor];//背景色
    label.text = @"i am a label";//内容
    label.font = [UIFont systemFontOfSize:16.0f];//字号
    label.textColor = [UIColor blackColor];//文字颜色
    label.shadowColor = [UIColor redColor];//阴影颜色
    label.shadowOffset = CGSizeMake(5, 5);//阴影偏移
    label.textAlignment = NSTextAlignmentCenter;//文字对齐方式
    label.numberOfLines = 1;//行数
    label.userInteractionEnabled = YES;//是否启用用户交互
    label.enabled = YES;//同上
    label.adjustsFontSizeToFitWidth = YES;//文字是否自适应宽度
    [self.view addSubview:label];//添加label
    
    
    //UIButton
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];//初始化
    button.frame = CGRectMake(0, 70, 200, 80);//位置
    button.backgroundColor = [UIColor clearColor];//背景色
    [button setTitle:@"button" forState:UIControlStateNormal];//文字
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];//文字颜色
    [button setImage:[UIImage imageNamed:@"favorite"] forState:UIControlStateNormal];//图片
    [button setBackgroundImage:[UIImage imageNamed:@"background"] forState:UIControlStateNormal];//背景图片
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];//添加点击事件
    [self.view addSubview:button];//添加button
    
    //UISegmentedControl
    UISegmentedControl *segment = [[UISegmentedControl alloc]initWithItems:@[@"seg1",@"seg2"]];//初始化
    segment.frame = CGRectMake(0, 160, 200, 30);//位置
    [segment insertSegmentWithTitle:@"seg3" atIndex:2 animated:YES];//添加新的item
    [segment removeSegmentAtIndex:2 animated:YES];//移除对应的item
    [segment setTitle:@"seg11" forSegmentAtIndex:0];//设置文字
    [segment setWidth:150 forSegmentAtIndex:0];//设置宽度
    [segment setContentOffset:CGSizeMake(5, 5) forSegmentAtIndex:1];//设置偏移
    [segment setEnabled:YES forSegmentAtIndex:1];//是否可以点击
    [segment addTarget:self action:@selector(segmentSelect:) forControlEvents:UIControlEventValueChanged];//添加点击事件
    [self.view addSubview:segment];//添加segment
    
    //UITextField
    UITextField *textField = [[UITextField alloc]init];//初始化
    textField.frame = CGRectMake(0, 200, 200, 30);//位置
    textField.backgroundColor = [UIColor whiteColor];//背景色
    textField.font = [UIFont systemFontOfSize:17.0f];//字号
    textField.textAlignment = NSTextAlignmentLeft;//对齐方式
    textField.borderStyle = UITextBorderStyleRoundedRect;//边框风格
    textField.placeholder = @"请输入文字";//占位符
    textField.clearsOnBeginEditing = YES;//开始输入是否清空文字
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;//清空按钮显示模式
    textField.delegate = self;
    [self.view addSubview:textField];
}

//button点击事件
-(void)buttonClick:(UIButton *)btn{
    NSLog(@"button click");
}

//segment点击事件
-(void)segmentSelect:(UISegmentedControl *)seg{
    NSLog(@"seg click %ld",(long)seg.selectedSegmentIndex);
}

#pragma mark --UITextFieldDelegate--
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSLog(@"%s",__FUNCTION__);
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"%s",__FUNCTION__);
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    NSLog(@"%s",__FUNCTION__);
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"%s",__FUNCTION__);
}
- (void)textFieldDidEndEditing:(UITextField *)textField reason:(UITextFieldDidEndEditingReason)reason NS_AVAILABLE_IOS(10_0){
    NSLog(@"%s",__FUNCTION__);
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSLog(@"%s",__FUNCTION__);
    return YES;
}
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    NSLog(@"%s",__FUNCTION__);
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"%s",__FUNCTION__);
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
