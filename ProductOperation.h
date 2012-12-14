//
//  ProductOperation.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandPool.h"
#import "Acommand.h"
#import "Bcommand.h"
@interface ProductOperation : NSOperation
{
    CommandPool *commandpool;
}
@property (retain) CommandPool *commandpool;
@end
