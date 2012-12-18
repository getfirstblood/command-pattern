//
//  ProductOperation.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandPool.h"
#import "Acommand.h"
#import "Bcommand.h"
/**
 *@brief 生产者线程池操作对象，负责创建命令，并加入命令池中
 */
@interface ProductOperation : NSOperation
{
    /** 命令池*/
    CommandPool *commandpool;
}
@property (retain) CommandPool *commandpool;
@end
