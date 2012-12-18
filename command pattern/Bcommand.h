//
//  Bcommand.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import "Command.h"
#import "BFunction.h"
/**
 *@brief B命令
 */
@interface Bcommand : Command
{
    BFunction *func;
}
@property (retain, nonatomic) BFunction *func;
@end
