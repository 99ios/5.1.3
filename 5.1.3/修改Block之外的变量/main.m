//
//  main.m
//  修改Block之外的变量
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        __block int i =  100;
        void (^withBlockWord)(void) = ^(void) {
            NSLog(@"i 在Block中获取的值:%d",i);
        };
        withBlockWord();
        i = 200;
        withBlockWord();
        NSLog(@"i 的当前值: %d",i);
    }
    return 0;
}
