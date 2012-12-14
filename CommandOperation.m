//
//  CommandOperation.m
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import "CommandOperation.h"

@implementation CommandOperation
@synthesize com;
- (void)dealloc
{
    [com release];
    [super dealloc];
}
- (void)main
{
    [com excute];
}
@end
