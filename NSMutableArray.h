//
//  NSMutableArray.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *@brief 可变数组的扩充功能，封装一个队列的功能，且线程安全
 */
@interface NSMutableArray (QueueAddition)
- (void)push:(id)obj;
- (id)pop;
@end
