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
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        NSOperationQueue *queue = [[[NSOperationQueue alloc] init] autorelease];
        Acommand *acom = [[[Acommand alloc] init] autorelease];
        AFunction *afun = [[[AFunction alloc] init] autorelease];
        acom.func = afun;
        Bcommand *bcom = [[[Bcommand alloc] init] autorelease];
        BFunction *bfun = [[[BFunction alloc] init] autorelease];
        bcom.func = bfun;
        CommandOperation *opea = [[[CommandOperation alloc] init] autorelease];
        opea.com = acom;
        CommandOperation *opeb = [[[CommandOperation alloc] init] autorelease];
        opeb.com = bcom;
        [queue addOperation:opea];
        [queue addOperation:opeb];
    }
    sleep(10);
    return 0;
}

