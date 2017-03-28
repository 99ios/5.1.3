//
//  main.m
//  在Block中可以对i的值进行修改
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
            i = 200;
        };
        withBlockWord();
        i = 300;
        withBlockWord();
        NSLog(@"i 的当前值: %d",i);
    }
    return 0;
}
