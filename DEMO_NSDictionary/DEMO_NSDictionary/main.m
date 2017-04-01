//
//  main.m
//  DEMO_NSDictionary
//
//  Created by charles on 2017/3/30.
//  Copyright © 2017年 charles. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSDictionary
        //创建
        NSDictionary *dict1 = @{@"key1":@"value1"};
        NSLog(@"dict1 = %@",dict1);
        
        NSDictionary *dict2 = [[NSDictionary alloc]init];
        NSLog(@"dict2 = %@",dict2);
        
        NSDictionary *dict3 = [[NSDictionary alloc]initWithDictionary:dict1];
        NSLog(@"dict3 = %@",dict3);
        
        NSDictionary *dict4 = [[NSDictionary alloc]initWithObjectsAndKeys:@"value4",@"key4",@"value44",@"key44", nil];
        NSLog(@"dict4 = %@",dict4);
        
        NSDictionary *dict5 = [[NSDictionary alloc]initWithObjects:@[@"value5",@"value55"] forKeys:@[@"key5",@"key55"]];
        NSLog(@"dict5 = %@",dict5);
        
        NSDictionary *dict6 = [NSDictionary dictionaryWithDictionary:dict1];
        NSLog(@"dict6 = %@",dict6);
        
        NSDictionary *dict7 = [NSDictionary dictionaryWithObjectsAndKeys:@"value7",@"key7",@"value77",@"key77", nil];
        NSLog(@"dict7 = %@",dict7);
        
        NSDictionary *dict8 = [NSDictionary dictionaryWithObject:@"value8" forKey:@"key8"];
        NSLog(@"dict8 = %@",dict8);
        
        //常用方法
        //count  (字典元素格式   key:value 是一一对应的,所以是算作一个的)
        NSLog(@"%ld",[dict7 count]);
        
        //objectForKey:  (获取一个key对用的值)
        NSLog(@"%@",[dict7 objectForKey:@"key7"]);
        
        //allKeys   (获取key集合)
        NSLog(@"%@",[dict7 allKeys]);
        
        //allKeysForObject:   (获取该value对应的所有key   key是唯一的 但是value是有可能相同的)
        NSLog(@"%@",[dict7 allKeysForObject:@"key7"]);
        
        //allValues   (获取所有value)
        NSLog(@"%@",[dict7 allValues]);
        
        //isEqualToDictionary   (是否和其他字典相同)
        NSLog(@"%d",[dict7 isEqualToDictionary:dict8]);
        
        //keysSortedByValueUsingSelector:   (对所有的key进行排序)
        NSLog(@"%@",[dict7 keysSortedByValueUsingSelector:@selector(compare:)]);
        
        //遍历
        //for in
        for (id key in dict7) {
            NSLog(@"key = %@  value = %@",key,[dict7 objectForKey:key]);
        }
        
        //枚举遍历
        NSEnumerator *enumerator = [dict7 keyEnumerator];
        id key = [enumerator nextObject];
        while (key) {
            NSLog(@"key = %@  value = %@",key,[dict7 objectForKey:key]);
            key = [enumerator nextObject];
        }
        
        //block
        [dict7 enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSLog(@"key = %@  value = %@",key,[dict7 objectForKey:key]);
        }];
        
        //NSMutableDictionary
        //创建
        //dictionary
        NSMutableDictionary *dict9 = [NSMutableDictionary dictionary];
        NSLog(@"dict9 = %@",dict9);
        
        //dictionaryWithCapacity:
        NSMutableDictionary *dict10 = [NSMutableDictionary dictionaryWithCapacity:0];
        NSLog(@"dict10 = %@",dict10);
        
        
        //常用方法
        //setObject:(setValue:)forKey:   (添加某元素)
        [dict10 setObject:@"value10" forKey:@"key10"];
        [dict10 setObject:@"value11" forKey:@"key11"];
        [dict10 setObject:@"value12" forKey:@"key12"];
        [dict10 setValue:@"value13" forKey:@"key13"];
        [dict10 setValue:@"value14" forKey:@"key14"];
        [dict10 setValue:@"value15" forKey:@"key15"];
        NSLog(@"%@",dict10);
        
        //removeObjectForKey:   (移除某一个key对应的元素)
        [dict10 removeObjectForKey:@"key15"];
        NSLog(@"%@",dict10);
        
        //removeObjectsForKeys  (移除一组key对应的元素)
        [dict10 removeObjectsForKeys:@[@"key14",@"key13"]];
        NSLog(@"%@",dict10);
        
        //removeAllObjects  (移除所有元素)
        [dict10 removeAllObjects];
        NSLog(@"%@",dict10);
        
    }
    return 0;
}
