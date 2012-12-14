//
//  NSMutableArray.m
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import "NSMutableArray.h"

@implementation NSMutableArray(QueueAddition)
- (void)push:(id)obj
{
    @synchronized(self)
    {
        [self addObject:obj];
    }
}
- (id)pop
{
    @synchronized(self)
    {
        if(self.count == 0)
        {
            return nil;
        }
        id a = [self objectAtIndex:0];
        [[a retain] autorelease];
        NSLog(@"%d",[self count]);
        [self removeObjectAtIndex:0];
        NSLog(@"%d",[self count]);
        return a;
    }
}
@end
