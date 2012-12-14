//
//  Acommand.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import "Command.h"
#import "AFunction.h"
@interface Acommand : Command
{
    AFunction *func;
}
@property (retain, nonatomic) AFunction *func;
@end
