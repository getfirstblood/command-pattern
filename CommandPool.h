//
//  CommandPool.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSMutableArray.h"
#import "SynCondition.h"
/**
 *@brief 命令池对象，该命令池读写线程安全，支持线程同步
 */
@interface CommandPool : NSObject
{
    /** 空状态信号变量*/
    int i;//空状态
    /** 满状态信号变量*/
    int j;//满状态
    /** 用于存储命令的数组*/
    NSMutableArray *commandArray;
}
@property (assign, atomic) int i;
@property (assign, atomic) int j;
@property (retain) NSMutableArray *commandArray;
- (void)push:(id)obj;
- (id)pop;
@end
