//
//  Acommand.m
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import "Acommand.h"

@implementation Acommand
@synthesize func;
- (void)excute
{
    [func operation1];
    [func operation2];
}
@end
