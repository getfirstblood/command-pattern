//
//  CustomerOperation.m
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import "CustomerOperation.h"

@implementation CustomerOperation
@synthesize commandpool;
@synthesize cmd;
- (void)main
{
    for (; ; ) {
        self.cmd = (Command *)[self.commandpool pop];
        [cmd excute];
    }
}
@end
