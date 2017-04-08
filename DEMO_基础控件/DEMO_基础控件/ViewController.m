//
//  ViewController.m
//  DEMO_基础控件
//
//  Created by charles on 2017/4/5.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate,UITextViewDelegate,UIScrollViewDelegate>

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
    textField.delegate = self;//设置代理
    [self.view addSubview:textField];//添加textField
    
    
    //UISlider
    UISlider *slider = [[UISlider alloc]init];//初始化
    slider.frame = CGRectMake(0, 250, 200, 30);//位置
    slider.minimumValue = 0;//最小值
    slider.maximumValue = 1;//最大值
    slider.value = 0.5;//当前值
    [slider setThumbImage:[UIImage imageNamed:@"favorite"] forState:UIControlStateNormal];//设置滑块图片
    slider.continuous = YES;//valuechange是否全部返回
    [slider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];//添加滑动事件
    [self.view addSubview:slider];//添加slider
    
    
    //UISwitch
    UISwitch *aswitch = [[UISwitch alloc]init];//初始化
    aswitch.frame = CGRectMake(0, 290, 60, 30);//位置
    aswitch.backgroundColor = [UIColor blueColor];//背景色
    aswitch.onTintColor = [UIColor redColor];//打开时颜色
    aswitch.tintColor = [UIColor greenColor];//关闭时颜色
    aswitch.thumbTintColor = [UIColor yellowColor];//按钮颜色
    [aswitch setOn:YES animated:YES];//设置是否打开
    [aswitch addTarget:self action:@selector(switchValueChange:) forControlEvents:UIControlEventValueChanged];//添加选择事件
    [self.view addSubview:aswitch];//添加switch
    
    
    //UIActivityIndicatorView
    UIActivityIndicatorView *actView = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];//初始化
    actView.frame = CGRectMake(0, 330, 50, 50);//位置
    actView.hidesWhenStopped = YES;//停止时是否隐藏
    [actView startAnimating];//开始动画
    [self.view addSubview:actView];//添加actView
    
    
    //UIProgressView
    UIProgressView *progress = [[UIProgressView alloc]init];//初始化
    progress.frame = CGRectMake(0, 390, 200, 30);//位置
    progress.backgroundColor = [UIColor blueColor];//背景色
    progress.progressViewStyle = UIProgressViewStyleDefault;//风格
    progress.progressTintColor = [UIColor redColor];//已达到部分
    progress.trackTintColor = [UIColor greenColor];//未达到部分
    [progress setProgress:0.5 animated:YES];//设置proges的值
    [self.view addSubview:progress];//添加progress
    
    
    //UIImageView
    UIImageView *imageView1 = [[UIImageView alloc]init];//初始化
    imageView1.frame = CGRectMake(0, 430, 50, 50);//位置
    imageView1.image = [UIImage imageNamed:@"favorite"];
    imageView1.userInteractionEnabled = YES;//是否开启用户交互
    [self.view addSubview:imageView1];//添加imageView
    
    UIImageView *imageView2 = [[UIImageView alloc]init];//初始化
    imageView2.frame = CGRectMake(0, 480, 50, 50);//位置
    imageView2.animationImages = @[[UIImage imageNamed:@"favorite"],[UIImage imageNamed:@"background"]];//设置动画图片
    imageView2.animationRepeatCount = 0;//动画重复次数
    imageView2.animationDuration = 1;//动画时长
    [imageView2 startAnimating];//开启动画
    [self.view addSubview:imageView2];//添加imageView
    
    
    //UITextView
    UITextView *textView = [[UITextView alloc]init];//初始化
    textView.frame = CGRectMake(0, 540, 200, 100);//位置
    textView.backgroundColor = [UIColor whiteColor];//背景色
    textView.text = @"i am a textView i am a textView i am a textView i am a textView i am a textView i am a textView i am a textView i am a textView i am a textView i am a textView i am a textView i am a textView ";//文字
    textView.font = [UIFont systemFontOfSize:19.0f];//字号
    textView.textAlignment = NSTextAlignmentLeft;//对齐方式
    textView.editable = YES;//是否可编辑
    textView.selectable = YES;//是否可选择
    textView.delegate = self;//设置代理
    [self.view addSubview:textView];//添加textView
    
    //UIScrollView
    UIScrollView *scroll = [[UIScrollView alloc]init];//初始化
    scroll.frame = CGRectMake(200, 20, 100, 100);//位置
    scroll.backgroundColor = [UIColor redColor];
    for (int i=0; i<3; i++) {
        UIView *subView = [[UIView alloc]initWithFrame:CGRectMake(i*100, 0, 100, 200)];//内部视图初始化并且设置位置
        subView.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];//背景色
        [scroll addSubview:subView];//添加到scrollView
    }
    scroll.pagingEnabled = YES;//是否滑动一页
    scroll.contentSize = CGSizeMake(300, 200);//滑动范围
    scroll.bounces = YES;//是否有回弹效果
    scroll.showsHorizontalScrollIndicator = YES;//是否显示横向滑动条
    scroll.showsVerticalScrollIndicator = YES;//是否显示纵向滑动条
    scroll.delegate = self;//设置代理
    [scroll setContentOffset:CGPointMake(100, 0) animated:YES];//设置当前滚动到的位置
    [self.view addSubview:scroll];//添加scroll
}

//button点击事件
-(void)buttonClick:(UIButton *)btn{
    NSLog(@"button click");
}

//segment点击事件
-(void)segmentSelect:(UISegmentedControl *)seg{
    NSLog(@"seg click %ld",(long)seg.selectedSegmentIndex);
}

//slider滑动事件
-(void)sliderValueChange:(UISlider *)slider{
    NSLog(@"slider value change %f",slider.value);
}

//switch选择事件
-(void)switchValueChange:(UISwitch *)aswitch{
    NSLog(@"switch value change %d",aswitch.isOn);
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


#pragma mark --UITextViewDelegate--
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    NSLog(@"%s",__FUNCTION__);
    return YES;
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    NSLog(@"%s",__FUNCTION__);
    return YES;
}

- (void)textViewDidBeginEditing:(UITextView *)textView{
    NSLog(@"%s",__FUNCTION__);
}
- (void)textViewDidEndEditing:(UITextView *)textView{
    NSLog(@"%s",__FUNCTION__);
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    NSLog(@"%s",__FUNCTION__);
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView{
    NSLog(@"%s",__FUNCTION__);
}

- (void)textViewDidChangeSelection:(UITextView *)textView{
    NSLog(@"%s",__FUNCTION__);
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction{
    NSLog(@"%s",__FUNCTION__);
    return YES;
}
- (BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction{
    NSLog(@"%s",__FUNCTION__);
    return YES;
}

#pragma mark --UIScrollViewDelegate--
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"%s",__FUNCTION__);
}
- (void)scrollViewDidZoom:(UIScrollView *)scrollView{
    NSLog(@"%s",__FUNCTION__);
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"%s",__FUNCTION__);
}
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    NSLog(@"%s",__FUNCTION__);
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
     NSLog(@"%s",__FUNCTION__);
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"%s",__FUNCTION__);
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"%s",__FUNCTION__);
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView{
    NSLog(@"%s",__FUNCTION__);
}

- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    NSLog(@"%s",__FUNCTION__);
    return nil;
}

- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view{
    NSLog(@"%s",__FUNCTION__);
}
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view atScale:(CGFloat)scale{
    NSLog(@"%s",__FUNCTION__);
}

- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView{
    return YES;
}
- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView{
    NSLog(@"%s",__FUNCTION__);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
