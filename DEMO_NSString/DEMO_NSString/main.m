//
//  main.m
//  DEMO_NSString
//
//  Created by Charles on 2017/3/29.
//  Copyright © 2017年 charles. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //创建
        //1、init
        NSString *str1 = [[NSString alloc] init];
        NSLog(@"str1 = %@",str1);
        
        //2、initWithBytes:length:encoding:
        NSString *str2 = [[NSString alloc] initWithBytes:"str2" length:4 encoding:NSUTF8StringEncoding];
        NSLog(@"str2 = %@",str2);
        
        //3、initWithCharacters:length:
        UniChar s[4] = {'s','t','r','3'};
        NSString *str3 = [[NSString alloc] initWithCharacters:s length:4];
        NSLog(@"str3 = %@",str3);
        
        //4、initWithCString:encoding:
        NSString *str4 = [[NSString alloc] initWithCString:"str4" encoding:NSUTF8StringEncoding];
        NSLog(@"str4 = %@",str4);
        
        //5、initWithUTF8String:
        NSString *str5 = [[NSString alloc] initWithUTF8String:"str5"];
        NSLog(@"str5 = %@",str5);
        
        //6、initWithFormat:
        NSString *str6 = [[NSString alloc] initWithFormat:@"str6"];
        NSLog(@"str6 = %@",str6);
        
        // 7、stringWithFormat:
        NSString *str7 = [NSString stringWithFormat:@"str7"];
        NSLog(@"str7 = %@",str7);
        
        //8、stringWithCharacters:length:
        UniChar ss[4] = {'s','t','r','8'};
        NSString *str8 = [NSString stringWithCharacters:ss length:4];
        NSLog(@"str8 = %@",str8);
        
        //9、stringWithString://等价于直接赋值
        //        NSString * str9 = [NSString stringWithString:@"str9"];
        NSString *str9 = @"str9";
        NSLog(@"str9 = %@",str9);
        
        //10、stringWithCString:encoding:
        NSString *str10 = [NSString stringWithCString:"str10" encoding:NSUTF8StringEncoding];
        NSLog(@"str10 = %@",str10);
        
        //11、stringWithUTF8String:
        NSString *str11 = [NSString stringWithUTF8String:"str11"];
        NSLog(@"str11 = %@",str11);
        
        //常用方法
        //length (获得长度)
        NSLog(@"%ld", [str11 length]);
        NSLog(@"%ld", str11.length);
        
        //characterAtIndex: (获得某下标对应的字符)
        NSLog(@"%c", [str11 characterAtIndex:1]);
        
        //getCharacters:range:  (获得一定范围内的字符)
        NSRange ran = NSMakeRange(1, 2);
        [str11 getCharacters:s range:ran];
        for (int i = 0; i < ran.length; i++) {
            NSLog(@"s[%d] = %c",i,s[i]);
        }
        
        //substringFromIndex:  (从某下标开始截取字符串)
        NSString *tmpStr = [str11 substringFromIndex:1];
        NSLog(@"%@",tmpStr);
        
        //substringToIndex:    (截取字符串到某下标)
        tmpStr = [str11 substringToIndex:2];
        NSLog(@"%@",tmpStr);
        
        //substringWithRange:  (截取某范围里的字符串)
        tmpStr = [str11 substringWithRange:ran];
        NSLog(@"%@",tmpStr);
        
        //注意:所有的包括获取截取等的都是采用的[)方式  即左包含  右不包含
        
        
        //compare: (比较:结果为升序,降序,相等)
        NSLog(@"%ld",[str11 compare:str10]);
        
        //isEqualToString:  (比较:两者是否相等)
        NSLog(@"%hhd",[str11 isEqualToString:str10]);
        
        //hasPrefix:  (是否有该字符串头)
        NSLog(@"%hhd",[str11 hasPrefix:@"st"]);
        
        //hasSuffix:  (是否有该字符串尾)
        NSLog(@"%hhd",[str11 hasSuffix:@"11"]);
        
        //uppercaseString (字符串全部转成大写)
        NSLog(@"%@",[str11 uppercaseString]);
        
        //lowercaseString (字符串全部转成小写)
        NSLog(@"%@",[str11 lowercaseString]);
        
        //capitalizedString  (首字母大写)
        NSLog(@"%@",[str11 capitalizedString]);
        
        //floatValue (转换格式)
        //doubleValue
        //intValue
        //integerValue
        //longLongValue
        //boolValue
        NSLog(@"%f",[str11 floatValue]);
        
        //rangeOfString: (子串在字符串中的位置)
        NSLog(@"%@",NSStringFromRange([str11 rangeOfString:@"11"]));
        
        //rangeOfCharacterFromSet:  (某集合中的字符在字符串中的位置)
        NSLog(@"%@",NSStringFromRange([str11 rangeOfCharacterFromSet:[NSCharacterSet characterSetWithCharactersInString:@"s"]]));
        
        //stringByAppendingString:  (追加字符串)
        NSLog(@"%@",[str11 stringByAppendingString:str10]);
        
        //stringByAppendingFormat:   (追加某格式化字符串)
        NSLog(@"%@",[str11 stringByAppendingFormat:@"%d",1]);
        
        //stringByReplacingOccurrencesOfString:withString:   (用某子串替换某子串)
        NSLog(@"%@",[str11 stringByReplacingOccurrencesOfString:@"11" withString:@"2"]);
        
        //cStringUsingEncoding:  (以一定格式转成C字符串)
        const char *p1 = [str11 cStringUsingEncoding:NSUTF8StringEncoding];
        NSLog(@"p1 = %s",p1);
        
        
        //NSMutableString
        //创建
        //initWithCapacity:
        NSMutableString *str12 = [[NSMutableString alloc]initWithCapacity:0];
        NSLog(@"str12 = %@",str12);
        
        //stringWithCapacity:
        NSMutableString *str13 = [NSMutableString stringWithCapacity:0];
        NSLog(@"str13 = %@",str13);
        
        //initWithFormat:
        NSMutableString *str14 = [[NSMutableString alloc]initWithFormat:@"str14"];
        NSLog(@"str14 = %@",str14);
        
        //stringWithFormat:
        NSMutableString *str15 = [NSMutableString stringWithFormat:@"str15"];
        NSLog(@"str15 = %@",str15);
        
        //initWithString:
        NSMutableString *str16 = [[NSMutableString alloc]initWithString:@"str16"];
        NSLog(@"str16 = %@",str16);
        
        //stringWithString:
        NSMutableString *str17 = [NSMutableString stringWithString:@"str17"];
        NSLog(@"str17 = %@",str17);
        
        //常用方法
        
        //replaceCharactersInRange:withString:   (替换某范围类的子串)
        [str17 replaceCharactersInRange:NSMakeRange(0, 1) withString:@"1"];
        NSLog(@"%@",str17);
        
        //insertString:atIndex:  (插入某子串在某个下标)
        [str17 insertString:@"s" atIndex:1];
        NSLog(@"%@",str17);
        
        //deleteCharactersInRange:  (删除某个范围内的子串)
        [str17 deleteCharactersInRange:NSMakeRange(0, 1)];
        NSLog(@"%@",str17);
        
        //appendString:  (追加子串)
        [str17 appendString:@"str17"];
        NSLog(@"%@",str17);
        
        //appendFormat:   (追加格式化子串)
        [str17 appendFormat:@"%d",1];
        NSLog(@"%@",str17);
        
        //setString:   (设置字符串内容)
        [str17 setString:@"str17"];
    }
    return 0;
}
