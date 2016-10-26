//
//  UILabel+PPCounter.h
//  PPCounter
//
//  Created by AndyPang on 16/10/15.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

/*
 *********************************************************************************
 *
 *⭐️⭐️⭐️ 新建 PP-iOS学习交流群: 323408051 欢迎加入!!! ⭐️⭐️⭐️
 *
 * 如果您在使用 PPCounter 的过程中出现bug或有更好的建议,还请及时以下列方式联系我,我会及
 * 时修复bug,解决问题.
 *
 * Weibo : CoderPang
 * Email : jkpang@outlook.com
 * QQ 群 : 323408051
 * GitHub: https://github.com/jkpang
 *
 * 如果 PPCounter 好用,希望您能Star支持,你的 ⭐️ 是我持续更新的动力!
 *
 *********************************************************************************
 */

#import <UIKit/UIKit.h>
#import "PPCounterEngine.h"

@class PPCounter;

@interface UILabel (PPCounter)

/** 动画类型*/
@property (nonatomic, assign) PPCounterAnimationType counterAnimationType;


#pragma mark - normal

/**
 正常字体属性UILabel中的数字在指定时间从 numberA -> numberB,

 @param numberA     开始的数字
 @param numberB     结束的数字
 @param duration    持续时间
 @param formatBlock 设置字体一般属性的Block
 */
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration formatBlock:(PPFormatBlock)formatBlock;

/**
 1.正常字体属性UILabel中的数字在指定时间从 numberA -> numberB,
 2.有结束回调

 @param numberA         开始的数字
 @param numberB         结束的数字
 @param duration        持续时间
 @param formatBlock     设置一般字体的Block
 @param completionBlock 完成的Block
 */
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration formatBlock:(PPFormatBlock)formatBlock completeBlock:(PPCompletionBlock)completionBlock;

/**
 1.正常字体属性UILabel中的数字在指定时间从 numberA -> numberB,
 2.可设置动画类型,
 3.有结束回调

 @param numberA         开始的数字
 @param numberB         结束的数字
 @param duration        持续时间
 @param animationType   动画类型
 @param formatBlock     设置字体一般属性的block
 @param completionBlock 完成的block
 */
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration animationType:(PPCounterAnimationType)animationType formatBlock:(PPFormatBlock)formatBlock completeBlock:(PPCompletionBlock)completionBlock;


#pragma mark - attributed

/**
 富文本字体属性UILabel中的数字在指定时间从 numberA -> numberB,
 
 @param numberA               开始的数字
 @param numberB               结束的数字
 @param duration              持续时间
 @param attributedFormatBlock 设置富文本字体属性的Block
 */
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock;

/**
 1.富文本字体属性UILabel中的数字在指定时间从 numberA -> numberB,
 2.有结束回调

 @param numberA               开始的数字
 @param numberB               结束的数字
 @param duration              持续时间
 @param attributedFormatBlock 设置富文本字体属性的Block
 @param completionBlock       完成的Block
 */
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock completeBlock:(PPCompletionBlock)completionBlock;

/**
 1.富文本字体属性UILabel中的数字在指定时间从 numberA -> numberB,
 2.可设置动画类型,
 3.有结束回调

 @param numberA               开始的数字
 @param numberB               结束的数字
 @param duration              持续时间
 @param animationType         动画类型
 @param attributedFormatBlock 设置富文本字体属性的Block
 @param completionBlock       完成的Block
 */
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration animationType:(PPCounterAnimationType)animationType attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock completeBlock:(PPCompletionBlock)completionBlock;

@end
