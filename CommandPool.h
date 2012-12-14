//
//  CommandPool.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSMutableArray.h"
#import "SynCondition.h"
@interface CommandPool : NSObject
{
    int i;//空状态
    int j;//满状态
    NSMutableArray *commandArray;
}
@property (assign, atomic) int i;
@property (assign, atomic) int j;
@property (retain) NSMutableArray *commandArray;
- (void)push:(id)obj;
- (id)pop;
@end
