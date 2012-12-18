//
//  ProductOperation.m
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import "ProductOperation.h"

@implementation ProductOperation
@synthesize commandpool;
/**
 * @brief 
 */
- (void)main
{
    //生产
    for (; ; ) {
        Acommand *acom = [[[Acommand alloc] init] autorelease];
        AFunction *afun = [[[AFunction alloc] init] autorelease];
        acom.func = afun;
        Bcommand *bcom = [[[Bcommand alloc] init] autorelease];
        BFunction *bfun = [[[BFunction alloc] init] autorelease];
        bcom.func = bfun;
        [self.commandpool push:acom];
        [self.commandpool push:bcom];
    }
}
- (void)dealloc
{
    [commandpool release];
    [super dealloc];
}
@end
