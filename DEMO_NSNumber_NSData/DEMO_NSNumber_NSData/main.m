//
//  main.m
//  DEMO_NSNumber_NSData
//
//  Created by charles on 2017/3/30.
//  Copyright © 2017年 charles. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //NSNumber
        //initWithChar:
        NSNumber *num1 = [[NSNumber alloc]initWithChar:'a'];
        NSLog(@"num1 = %@",num1);
        
        //initWithShort:
        NSNumber *num2= [[NSNumber alloc]initWithShort:1];
        NSLog(@"num2 = %@",num2);
        
        NSNumber *num3= [[NSNumber alloc]initWithInt:1];
        NSLog(@"num3 = %@",num3);
        
        //initWithLong:
        NSNumber *num4 = [[NSNumber alloc]initWithLong:10000000000];
        NSLog(@"num4 = %@",num4);
        
        //initWithLongLong:
        NSNumber *num5 = [[NSNumber alloc]initWithLongLong:1000000000000000000];
        NSLog(@"num5 = %@",num5);
        
        //initWithFloat:
        NSNumber *num6 = [[NSNumber alloc]initWithFloat:M_PI];
        NSLog(@"num6 = %@",num6);
        
        //initWithDouble:
        NSNumber *num7 = [[NSNumber alloc]initWithDouble:999999999999];
        NSLog(@"num7 = %@",num7);
        
        //initWithBool:
        NSNumber *num8 = [[NSNumber alloc]initWithBool:YES];
        NSLog(@"num8 = %@",num8);
        
        //initWithInteger:
        NSNumber *num9 = [[NSNumber alloc]initWithInteger:1];
        NSLog(@"num9 = %@",num9);
        
        NSNumber *num10 = @(111);
        NSLog(@"num10 = %@",num10);
        
        //numberWithChar:
        NSNumber *num11 = [NSNumber numberWithChar:'b'];
        NSLog(@"num11 = %@",num11);
        
        //numberWithShort:
        NSNumber *num12 = [NSNumber numberWithShort:1];
        NSLog(@"num12 = %@",num12);
        
        //numberWithInt:
        NSNumber *num13 = [NSNumber numberWithInt:1];
        NSLog(@"num13 = %@",num13);
        
        //numberWithLong:
        NSNumber *num14 = [NSNumber numberWithLong:1000000000];
        NSLog(@"num14 = %@",num14);
        
        //numberWithLongLong:
        NSNumber *num15 = [NSNumber numberWithLongLong:10000000000000000];
        NSLog(@"num15 = %@",num15);
        
        //numberWithFloat:
        NSNumber *num16 = [NSNumber numberWithFloat:M_PI];
        NSLog(@"num16 = %@",num16);
        
        //numberWithDouble:
        NSNumber *num17 = [NSNumber numberWithDouble:999999999];
        NSLog(@"num17 = %@",num17);
        
        //numberWithBool:
        NSNumber *num18 = [NSNumber numberWithBool:YES];
        NSLog(@"num18 = %@",num18);
        
        //numberWithInteger:
        NSNumber *num19 = [NSNumber numberWithInteger:1];
        NSLog(@"num19 = %@",num19);
        
        //charValue
        NSLog(@"%c",[num1 charValue]);
        
        //shortValue
        NSLog(@"%d",[num2 shortValue]);
        
        //intValue
        NSLog(@"%d",[num3 intValue]);
        
        //longValue
        NSLog(@"%ld",[num4 longValue]);
        
        //longLongValue
        NSLog(@"%lld",[num5 longLongValue]);
        
        //floatValue
        NSLog(@"%f",[num6 floatValue]);
        
        //doubleValue
        NSLog(@"%f", [num7 doubleValue]);
        
        //boolValue
        NSLog(@"%d",[num8 boolValue]);
        
        //integerValue
        NSLog(@"%ld",[num9 integerValue]);
        
        //stringValue
        NSLog(@"%@",[num10 stringValue]);
        
        //isEqualToNumber:
        NSLog(@"%d",[num10 isEqualToNumber:num9]);
        
        //compare:
        NSLog(@"%ld",(long)[num10 compare:num9]);
        
        
        //NSData
        //init
        NSData *data1 = [[NSData alloc]init];
        NSLog(@"data1 = %@",data1);
        
        //initWithBytes:length:
        Byte mybyte[] = {0x01,0x02,0x03,10,20,30,'?'};
        NSData *data2 = [[NSData alloc]initWithBytes:mybyte length:sizeof(mybyte)];
        NSLog(@"data2 = %@",data2);
        
        //dataWithData:
        NSData *data3 = [NSData dataWithData:data2];
        NSLog(@"data3 = %@",data3);
        
        
        //常用转换
        //NSData－>NSString
        NSString *str1 = [[NSString alloc] initWithData:data3 encoding:NSUTF16StringEncoding];
        NSLog(@"%@",str1);
        
        NSString *str2 = [[NSString alloc] initWithData:data3 encoding:NSUTF8StringEncoding];
        NSLog(@"%@",str2);
        
        //NSString－>NSData
        NSString *str3 = @"1234abcd";
        NSData *date4 = [str3 dataUsingEncoding: NSUTF8StringEncoding];
        NSLog(@"date4 = %@",date4);
        
        //NSData－>Byte数组
        NSString *str4 = @"1234567890";
        NSData *date5 = [str4 dataUsingEncoding: NSUTF8StringEncoding];
        Byte *byte2 = (Byte *)[date5 bytes];
        for(int i=0;i<[date5 length];i++){
            printf("byte2 = %d\n",byte2[i]);
        }
        
        //Byte数组－>NSData
        Byte byte3[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23};
        NSData *data6 = [[NSData alloc] initWithBytes:byte3 length:sizeof(byte3)];
        NSLog(@"data6 = %@",data6);
        
        //Byte数组－>16进制数
        Byte *bytes = (Byte *)[data6 bytes];
        NSString *hexStr=@"";
        for(int i=0;i<[data6 length];i++)
        {
            NSString *newHexStr = [NSString stringWithFormat:@"%x",bytes[i]&0xff]; ///16进制数
            if([newHexStr length]==1)
                hexStr = [NSString stringWithFormat:@"%@0%@",hexStr,newHexStr];
            else
                hexStr = [NSString stringWithFormat:@"%@%@",hexStr,newHexStr];
        }
        NSLog(@"bytes 的16进制数为:%@",hexStr);
        
        
        //16进制数－>Byte数组
        /// 将16进制数据转化成Byte 数组
        NSString *hexString = @"3e435fab9c34891f"; //16进制字符串
        int j=0;
        Byte bytes1[128];
        ///3ds key的Byte 数组， 128位
        for(int i=0;i<[hexString length];i++)
        {
            int int_ch;  /// 两位16进制数转化后的10进制数
            
            unichar hex_char1 = [hexString characterAtIndex:i]; ////两位16进制数中的第一位(高位*16)
            int int_ch1;
            if(hex_char1 >= '0' && hex_char1 <='9')
                int_ch1 = (hex_char1-48)*16;   //// 0 的Ascll - 48
            else if(hex_char1 >= 'A' && hex_char1 <='F')
                int_ch1 = (hex_char1-55)*16; //// A 的Ascll - 65
            else
                int_ch1 = (hex_char1-87)*16; //// a 的Ascll - 97
            i++;
            
            unichar hex_char2 = [hexString characterAtIndex:i]; ///两位16进制数中的第二位(低位)
            int int_ch2;
            if(hex_char2 >= '0' && hex_char2 <='9')
                int_ch2 = (hex_char2-48); //// 0 的Ascll - 48
            else if(hex_char1 >= 'A' && hex_char1 <='F')
                int_ch2 = hex_char2-55; //// A 的Ascll - 65
            else
                int_ch2 = hex_char2-87; //// a 的Ascll - 97
            
            int_ch = int_ch1+int_ch2;
            NSLog(@"int_ch=%d",int_ch);
            bytes[j] = int_ch;  ///将转化后的数放入Byte数组里
            j++;
        }
        NSData *newData = [[NSData alloc] initWithBytes:bytes1 length:sizeof(bytes1)];
        NSLog(@"newData=%@",newData);
        
        
    }
    return 0;
}
