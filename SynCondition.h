//
//  SynCondition.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *@brief 同步信号量，用于生产者消费者线程同步使用。
 */
@interface SynCondition : NSCondition
{
    
}
/** 提供一个同步满信号量*/
+ (SynCondition *)shareInstance1;
/** 提供一个同步空信号量*/
+ (SynCondition *)shareInstance2;
@end
