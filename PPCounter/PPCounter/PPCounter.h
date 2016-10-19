//
//  PPCounter.h
//  PPCounter
//
//  Created by AndyPang on 16/10/15.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PPCounterConst.h"

@interface PPCounter : NSObject

/**
 类方法创建一个计数器的实例
 */
+ (instancetype)counter;

/**
 在指定时间内数字从 numberA -> numberB

 @param starNumer       开始的数字
 @param endNumber       结束的数字
 @param duration        指定的时间
 @param animationType   动画类型
 @param numberBlock     当前数字的回调
 @param completionBlock 已完成的回调
 */
- (void)fromNumber:(CGFloat)starNumer toNumber:(CGFloat)endNumber duration:(CFTimeInterval)duration animationType:(PPCounterAnimationType)animationType currentNumber:(PPCurrentNumberBlock)numberBlock complete:(PPCompletionBlock)completionBlock;

@end
