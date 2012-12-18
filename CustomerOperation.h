//
//  CustomerOperation.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandPool.h"
#import "Command.h"
/**
 *@brief 消耗者线程池操作对象，负责从命令池中取出对象，并执行命令操作。
 */
@interface CustomerOperation : NSOperation
{
    /** 命令池*/
    CommandPool *commandpool;
    /** 命令*/
    Command *cmd;
}
@property (retain) CommandPool *commandpool;
@property (retain) Command *cmd;
@end
