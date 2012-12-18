//
//  Acommand.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import "Command.h"
#import "AFunction.h"
/**
 *@brief A命令
 */
@interface Acommand : Command
{
    /** 命令封装的对象，该处与适配器很相似*/
    AFunction *func;
}
@property (retain, nonatomic) AFunction *func;
@end
