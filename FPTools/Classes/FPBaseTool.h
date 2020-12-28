//
//  FPBaseTool.h
//  FPTools
//
//  Created by 金医桥 on 2020/12/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 基准功能。 返回时间（以纳秒为单位）。 （nsec / 1E9 =秒）
/// NSLog(@"seconds: %f", result/1E9);// 获得秒
/// @param block <#block description#>
FOUNDATION_EXPORT double fp_performAndTrackTime(dispatch_block_t block);

@interface FPBaseTool : NSObject

@end

NS_ASSUME_NONNULL_END
