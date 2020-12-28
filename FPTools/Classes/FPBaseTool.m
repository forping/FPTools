//
//  FPBaseTool.m
//  FPTools
//
//  Created by 金医桥 on 2020/12/28.
//

#import "FPBaseTool.h"

#include <mach/mach_time.h>

// 基准功能。 返回时间（以纳秒为单位）。 （nsec / 1E9 =秒）
double fp_performAndTrackTime(dispatch_block_t block) {
    uint64_t startTime = mach_absolute_time();
    block();
    uint64_t endTime = mach_absolute_time();

    // 经过的时间:mach time
    uint64_t elapsedTime = endTime - startTime;

    //将mach time单位转换为纳秒
    static double fp_ticksToNanoseconds = 0.0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mach_timebase_info_data_t timebase;
        mach_timebase_info(&timebase);
        fp_ticksToNanoseconds = (double)timebase.numer / timebase.denom;
    });
    
    // 获得纳秒
    double elapsedTimeInNanoseconds = elapsedTime * fp_ticksToNanoseconds;
    //NSLog(@"seconds: %f", elapsedTimeInNanoseconds/1E9);// 获得秒
    //printf(".");
    return elapsedTimeInNanoseconds;
}

@implementation FPBaseTool

@end
