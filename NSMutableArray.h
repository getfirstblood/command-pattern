//
//  NSMutableArray.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (QueueAddition)
- (void)push:(id)obj;
- (id)pop;
@end
