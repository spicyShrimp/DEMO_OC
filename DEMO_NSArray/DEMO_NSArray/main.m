//
//  main.m
//  DEMO_NSArray
//
//  Created by Charles on 2017/3/29.
//  Copyright © 2017年 charles. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSArray
        //init
        NSArray *arr1 = [[NSArray alloc]init];
        NSLog(@"%@",arr1);
        
        //array
        NSArray *arr2 = [NSArray array];
        NSLog(@"%@",arr2);
        
        //arrayWithObject
        NSArray *arr3 = [NSArray arrayWithObject:@"arr3"];
        NSLog(@"%@",arr3);
        
        //arrayWithObjects:
        NSArray *arr4 = [NSArray arrayWithObjects:@"arr4",@"arr4", nil];
        NSLog(@"%@",arr4);
        
        NSArray *arr5 = @[@"arr5",@"arr5",@"arr5",@"arr5",@"arr5"];
        NSLog(@"%@",arr5);
        
        //initWithObjects:
        NSArray *arr6 = [[NSArray alloc]initWithObjects:@"arr6",@"arr6", nil];
        NSLog(@"%@",arr6);
        
        //arrayWithArray:
        NSArray *arr7 = [NSArray arrayWithArray:arr6];
        NSLog(@"%@",arr7);
        
        //常用方法
        //count  (读取数组元素个数)
        NSLog(@"%ld",[arr7 count]);
        
        //objectAtIndex:  (读取下标对应的元素,,,也可以用[]  C的方式直接读取)
        NSLog(@"%@,%@",[arr7 objectAtIndex:0],arr7[0]);
        
        //arrayByAddingObject:  (追加一个元素,返回新的数组)
        NSArray *arr8 = [arr7 arrayByAddingObject:@"arr8"];
        NSLog(@"%@",arr8);
        
        //arrayByAddingObjectsFromArray:   (追加多个元素,返回新的数组)
        NSArray *arr9 = [arr8 arrayByAddingObjectsFromArray:arr7];
        NSLog(@"%@",arr9);
        
        //componentsJoinedByString:   (使用某字符串合并数组元素成一个新的字符串)
        NSLog(@"%@",[arr9 componentsJoinedByString:@"-"]);
        
        //containsObject:  (数组中是否有某元素)
        NSLog(@"%d",[arr9 containsObject:@"arr9"]);
        
        //indexOfObject   (某元素对应的下标)
        NSLog(@"%ld",[arr9 indexOfObject:@"arr8"]);
        
        //indexOfObject:inRange:  (对应范围内的某元素的下标)
        NSLog(@"%ld",[arr9 indexOfObject:@"arr8" inRange:NSMakeRange(0, arr9.count)]);
        
        //isEqualToArray:    (两个数组是否相等)
        NSLog(@"%d",[arr9 isEqualToArray:arr8]);
        
        //firstObject  (第一个元素)
        NSLog(@"%@",[arr9 firstObject]);
        
        //lastObject  (最后一个元素)
        NSLog(@"%@",[arr9 lastObject]);
        
        //objectsAtIndexes  (对应的多个下标的多个元素)
        NSLog(@"%@",[arr9 objectsAtIndexes:[NSIndexSet indexSetWithIndex:1]]);
        
        //数组遍历
        //for循环
        for (int i = 0; i<arr9.count; i++) {
            NSLog(@"%@",arr9[i]);
        }
        
        //for in
        for (id obj in arr9) {
            NSLog(@"%@",obj);
        }
        
        //迭代器
        NSEnumerator *enumerator = [arr9 objectEnumerator];
        id obj = nil;
        while(obj = [enumerator nextObject]){
            NSLog(@"%@",obj);
        }
        
        //block
        [arr9 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"%ld-%@",idx,obj);
            //若终断循环
            //*stop = YES;
        }];
        
        
        
        //NSMutableArray
        
        //init
        NSMutableArray *arr10 = [[NSMutableArray alloc]init];
        NSLog(@"%@",arr10);
        
        //array
        NSMutableArray *arr11 = [NSMutableArray array];
        NSLog(@"%@",arr11);
        
        //arrayWithCapacity:  (创建初始长度为多少的数组,但因为其实可变数组,所以即使长度不够什么的,也没有关系,比如可以设0)
        NSMutableArray *arr12 = [NSMutableArray arrayWithCapacity:0];
        NSLog(@"%@",arr12);
        
        //initWithCapacity:
        NSMutableArray *arr13 = [[NSMutableArray alloc]initWithCapacity:0];
        NSLog(@"%@",arr13);
        
        
        //常用方法
        //addObject:  (添加一个元素)
        [arr13 addObject:@"arr13"];
        NSLog(@"%@",arr13);
        
        //addObjectsFromArray:   (添加一组元素)
        [arr13 addObjectsFromArray:arr9];
        NSLog(@"%@",arr13);
        
        //insertObject:atIndex  (在某下标插入某一个元素)
        [arr13 insertObject:@"arr" atIndex:0];
        NSLog(@"%@",arr13);
        
        //removeLastObject   (删除最后一个元素)
        [arr13 removeLastObject];
        NSLog(@"%@",arr13);
        
        //removeObjectAtIndex:  (删除某下标对应的元素)
        [arr13 removeObjectAtIndex:0];
        NSLog(@"%@",arr13);
        
        //replaceObjectAtIndex:withObject   (替换某下标的元素)
        [arr13 replaceObjectAtIndex:0 withObject:@"index"];
        NSLog(@"%@",arr13);
        
        //exchangeObjectAtIndex:withObjectAtIndex:   (替换两个下标对应元素)
        [arr13 exchangeObjectAtIndex:0 withObjectAtIndex:1];
        NSLog(@"%@",arr13);
        
        //removeAllObjects    (移除所有元素)
        [arr13 removeAllObjects];
        NSLog(@"%@",arr13);
        
        [arr13 addObjectsFromArray:arr9];
        
        //removeObject:inRange:  (移除某范围内指定元素)
        [arr13 removeObject:@"arr" inRange:NSMakeRange(0, 1)];
        NSLog(@"%@",arr13);
        
        //removeObject:   (移除指定元素)
        [arr13 removeObject:@"arr8"];
        NSLog(@"%@",arr13);
        
        //removeObjectsInArray:   (删除某数组内存在的元素)
        [arr13 removeObjectsInArray:arr7];
        NSLog(@"%@",arr13);
        
        //setArray:   (设置数组元素)
        [arr13 setArray:arr9];
        
        //removeObjectsInRange:  (删除指定范围内的元素)
        [arr13 removeObjectsInRange:NSMakeRange(0, 1)];
        NSLog(@"%@",arr13);
        
        //sortUsingSelector:  (排序)
        [arr13 sortUsingSelector:@selector(compare:)];
        
    }
    return 0;
}
