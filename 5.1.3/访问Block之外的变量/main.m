//
//  main.m
//  访问Block之外的变量
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i =  100;
        void (^beginBlock)(void) = ^(void) {
            NSLog(@"i 在Block中获取的值:%d",i);
        };
        beginBlock();
        //修改i的值
        i = 200;
        beginBlock();
        NSLog(@"i 的当前值: %d",i);
    }
    return 0;
}
