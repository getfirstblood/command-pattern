//
//  main.m
//  command pattern
//
//  Created by gaoweiwei on 12-12-13.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandOperation.h"
#import "Acommand.h"
#import "Bcommand.h"
#import "ProductOperation.h"
#import "CustomerOperation.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        NSOperationQueue *queue = [[[NSOperationQueue alloc] init] autorelease];
//        Acommand *acom = [[[Acommand alloc] init] autorelease];
//        AFunction *afun = [[[AFunction alloc] init] autorelease];
//        acom.func = afun;
//        Bcommand *bcom = [[[Bcommand alloc] init] autorelease];
//        BFunction *bfun = [[[BFunction alloc] init] autorelease];
//        bcom.func = bfun;
//        CommandOperation *opea = [[[CommandOperation alloc] init] autorelease];
//        opea.com = acom;
//        CommandOperation *opeb = [[[CommandOperation alloc] init] autorelease];
//        opeb.com = bcom;
//        [queue addOperation:opea];
//        [queue addOperation:opeb];
        CommandPool *pool = [[[CommandPool alloc] init] autorelease];
        ProductOperation *po = [[[ProductOperation alloc] init] autorelease];
        po.commandpool = pool;
        [queue addOperation:po];
        CustomerOperation *co = [[[CustomerOperation alloc] init] autorelease];
        co.commandpool = pool;
        [queue addOperation:co];
    }
    sleep(50);
    return 0;
}

