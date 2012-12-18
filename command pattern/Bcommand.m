//
//  Bcommand.m
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import "Bcommand.h"

@implementation Bcommand
@synthesize func;
- (void)excute
{
    [func operation1];
    [func operation2];
}
- (void)dealloc
{
    [func release];
    [super dealloc];
}
@end
