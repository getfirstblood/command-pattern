//
//  Command.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *@brief 命令模式中的多有命令对象都需要实现的接口
 */
@interface Command : NSObject
/** 所有命令对象暴露的接口*/
- (void)excute;
@end
