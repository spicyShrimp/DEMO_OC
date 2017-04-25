//
//  ViewController.m
//  DEMO_Network
//
//  Created by charles on 2017/4/24.
//  Copyright © 2017年 charles. All rights reserved.
//



#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()
@property (nonatomic, strong)UIButton *button;
@property (nonatomic, strong)UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configUI];
}

-(void)configUI{
    _button = [UIButton buttonWithType:UIButtonTypeSystem];
    _button.frame = CGRectMake(0, 20, self.view.frame.size.width, 60);
    [_button setTitle:@"点击发送请求" forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(sendRequest) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button];
    
    _textView = [[UITextView alloc]initWithFrame:CGRectMake(0, 80, self.view.frame.size.width, self.view.frame.size.height-60)];
    _textView.font = [UIFont systemFontOfSize:20.0f];
    _textView.selectable = NO;
    _textView.editable = NO;
    [self.view addSubview:_textView];
    
}

-(void)sendRequest{
    
    //NSURLConnection
//    NSURL *url = [NSURL URLWithString:@"https://api.dolry.cn/dongting/Api/Weather"];//URL地址
//    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
//    [request setHTTPMethod:@"post"];//请求方式
//    [request setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];//头部信息
//    [request setHTTPBody:[@"province=上海&city=上海" dataUsingEncoding:NSUTF8StringEncoding]];//参数内容
//    [request setTimeoutInterval:20.0];//超时时间
//    
//    __weak typeof(self)weakSelf = self;
//    NSOperationQueue *queue=[NSOperationQueue mainQueue];
//    [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
//        NSDictionary * result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];//解析结果
//        NSLog(@"%@",[result descriptionWithLocale:nil]);
//        weakSelf.textView.text = [result descriptionWithLocale:nil];//显示
//    }];
    
    
    
    
    //NSURLSession
//    NSURL *url = [NSURL URLWithString:@"https://api.dolry.cn/dongting/Api/Weather"];//URL地址
//    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
//    [request setHTTPMethod:@"post"];//请求方式
//    [request setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];//头部信息
//    [request setHTTPBody:[@"province=上海&city=上海" dataUsingEncoding:NSUTF8StringEncoding]];//参数内容
//    [request setTimeoutInterval:20.0];//超时时间
//    
//    NSURLSession *session = [NSURLSession sharedSession];
//    
//    __weak typeof(self)weakSelf = self;
//    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        NSDictionary * result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];//解析结果
//        NSLog(@"%@",[result descriptionWithLocale:nil]);
//        dispatch_async(dispatch_get_main_queue(), ^{
//            weakSelf.textView.text = [result descriptionWithLocale:nil];//显示
//        });
//    }];//封装请求
//    [task resume];//开始请求
    
    
    
    //AFNetworking
    NSString *urlString = @"https://api.dolry.cn/dongting/Api/Weather";
    NSDictionary *parameters = @{@"province":@"上海",
                                 @"city":@"上海"};
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    __weak typeof(self)weakSelf = self;
    [manager POST:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary * result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];//解析结果
        NSLog(@"%@",[result descriptionWithLocale:nil]);
        dispatch_async(dispatch_get_main_queue(), ^{
            weakSelf.textView.text = [result descriptionWithLocale:nil];//显示
        });

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error.description);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

@implementation NSDictionary (Log)
- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *str = [NSMutableString string];
    
    [str appendString:@"{\n"];
    
    // 遍历字典的所有键值对
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        [str appendFormat:@"\t%@ = %@,\n", key, obj];
    }];
    
    [str appendString:@"}"];
    
    // 查出最后一个,的范围
    NSRange range = [str rangeOfString:@"," options:NSBackwardsSearch];
    if (range.length != 0) {
        // 删掉最后一个,
        [str deleteCharactersInRange:range];
    }
    
    return str;
}
@end
