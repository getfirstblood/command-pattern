//
//  SynCondition.h
//  command pattern
//
//  Created by gaoweiwei on 12-12-14.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SynCondition : NSCondition
{
    
}
+ (SynCondition *)shareInstance1;
+ (SynCondition *)shareInstance2;
+ (int)getNum1;
+ (int)getNum2;
@end
