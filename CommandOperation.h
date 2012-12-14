//
//  CommandOperation.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
@interface CommandOperation : NSOperation
{
    Command *com;
}
@property (retain, nonatomic) Command *com;
@end
