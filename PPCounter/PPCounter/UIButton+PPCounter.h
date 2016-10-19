//
//  UIButton+PPCounter.h
//  PPCounter
//
//  Created by AndyPang on 16/10/17.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPCounter.h"

@interface UIButton (PPCounter)

/** 动画类型*/
@property (nonatomic, assign) PPCounterAnimationType counterAnimationType;

/**
 在1.5s内,一般字体属性UIButton中的数字从 0 -> number
 
 @param number      结束的数字
 @param formatBlock 设置字体一般属性的block
 */
- (void)pp_fromZeroToNumber:(CGFloat)number formatBlock:(PPFormatBlock)formatBlock;


/**
 在1.5s内,富文本字体属性UIButton中的数字从 0 -> number
 
 @param number                结束的数字
 @param attributedFormatBlock 设置富文本字体属性的Block
 */
- (void)pp_fromZeroToNumber:(CGFloat)number attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock;

/**
 在1.5s内,一般字体属性UIButton中的数字从 numberA -> numberB
 
 @param numberA     开始的数字
 @param numberB     结束的数字
 @param formatBlock 设置字体一般属性的block
 */
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB formatBlock:(PPFormatBlock)formatBlock;


/**
 在1.5s内,富文本字体属性UIButton中的数字从 numberA -> numberB
 
 @param numberA               开始的数字
 @param numberB               结束的数字
 @param attributedFormatBlock 设置富文本字体属性的Block
 */
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock;

/**
 在指定时间内,一般字体属性UIButton中的数字从 numberA -> numberB,
 
 @param numberA     开始的数字
 @param numberB     结束的数字
 @param duration    持续时间
 @param formatBlock 设置字体一般属性的block
 */
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration formatBlock:(PPFormatBlock)formatBlock;


/**
 在指定时间内,富文本字体属性UIButton中的数字从 numberA -> numberB,
 
 @param numberA               开始的数字
 @param numberB               结束的数字
 @param duration              持续时间
 @param attributedFormatBlock 设置富文本字体属性的Block
 */
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock;

/**
 在指定时间内,一般字体属性UIButton中的数字从 numberA -> numberB,
 可设置动画类型
 
 @param numberA         开始的数字
 @param numberB         结束的数字
 @param duration        持续时间
 @param animationType   动画类型
 @param formatBlock     设置字体一般属性的block
 @param completionBlock 完成的block
 */
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration animationType:(PPCounterAnimationType)animationType formatBlock:(PPFormatBlock)formatBlock completeBlock:(PPCompletionBlock)completionBlock;

/**
 在指定时间内,富文本字体属性UIButton中的数字从 numberA -> numberB,
 可设置动画类型
 
 @param numberA               开始的数字
 @param numberB               结束的数字
 @param duration              持续时间
 @param animationType         动画类型
 @param attributedFormatBlock 设置富文本字体属性的Block
 @param completionBlock       完成的block
 */
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration animationType:(PPCounterAnimationType)animationType attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock completeBlock:(PPCompletionBlock)completionBlock;


@end
