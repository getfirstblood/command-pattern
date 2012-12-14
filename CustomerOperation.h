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
@interface CustomerOperation : NSOperation
{
    CommandPool *commandpool;
    Command *cmd;
}
@property (retain) CommandPool *commandpool;
@property (retain) Command *cmd;
@end
