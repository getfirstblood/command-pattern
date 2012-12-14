//
//  SynCondition.m
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import "SynCondition.h"
static volatile SynCondition *threadCondition;
static volatile SynCondition *commandCondition;
static int numThread;
static int numCommand;
@implementation SynCondition
+ (volatile SynCondition *)shareInstance1
{
    if(nil == threadCondition)
    {
        @synchronized(self)
        {
            if(nil == threadCondition)
            {
                threadCondition = [[self alloc] init];
            }
        }
    }
    return threadCondition;
}
+ (volatile SynCondition *)shareInstance2
{
    if(nil == commandCondition)
    {
        @synchronized(self)
        {
            if(nil == commandCondition)
            {
                commandCondition = [[self alloc] init];
            }
        }
    }
    return commandCondition;
}
+ (int)getNum2
{
    return numCommand;
}
+ (int)getNum1
{
    return numThread;
}
@end
