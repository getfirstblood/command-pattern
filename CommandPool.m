//
//  CommandPool.m
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import "CommandPool.h"

@implementation CommandPool
@synthesize commandArray;
@synthesize i;
@synthesize j;
- (id)init
{
    self = [super init];
    if (self) {
        i = 20;
        j = 0;
        self.commandArray = [[[NSMutableArray alloc] init] autorelease];
    }
    return self;
}

//生产者：
- (void)push:(id)obj
{
    SynCondition *condition1 = [SynCondition shareInstance1];//空
    SynCondition *condition2 = [SynCondition shareInstance2];//满
    //p i
    [condition1 lock];
    self.i = self.i - 1;
    if(self.i < 0)
    {
        [condition1 wait];
    }
    [self.commandArray push:obj];
    [condition1 unlock];
    //v j
    [condition2 lock];
    self.j = self.j + 1;
    if (self.j <= 0) {
        [condition2 signal];
    }
    [condition2 unlock];
}
//消费者：
- (id)pop
{
    id a;
    SynCondition *condition1 = [SynCondition shareInstance1];//kong
    SynCondition *condition2 = [SynCondition shareInstance2];//man
    
    //p j
    [condition2 lock];                 
    self.j = self.j - 1;
    if(self.j < 0)
    {
        [condition2 wait];
    }
    a = [self.commandArray pop];
    [condition2 unlock];
    //v i
    [condition1 lock];
    self.i = self.i + 1;
    if (self.j <= 0) {
        [condition1 signal];
    }
    [condition1 unlock];
    return a;
}
- (void)dealloc
{
    [commandArray release];
    [super dealloc];
}
@end
