//
//  UIButton+PPCounter.h
//  PPCounter
//
//  Created by AndyPang on 16/10/17.
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
 * Weibo : jkpang-庞
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

@interface UIButton (PPCounter)

/** 动画类型*/
@property (nonatomic, assign) PPCounterAnimationOptions animationOptions;

#pragma mark - normal

/**
 正常字体属性UIButton中的数字在指定时间从 numberA -> numberB,
 
 @param numberA     开始的数字
 @param numberB     结束的数字
 @param duration    持续时间
 @param format      设置字体一般属性的Block
 */
- (void)pp_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
               format:(PPFormatBlock)format;

/**
 1.正常字体属性UIButton中的数字在指定时间从 numberA -> numberB,
 2.有结束回调
 
 @param numberA    开始的数字
 @param numberB    结束的数字
 @param duration   持续时间
 @param format     设置一般字体的Block
 @param completion 完成的Block
 */
- (void)pp_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
               format:(PPFormatBlock)format
           completion:(PPCompletionBlock)completion;

/**
 1.正常字体属性UIButton中的数字在指定时间从 numberA -> numberB,
 2.可设置动画类型,
 3.有结束回调
 
 @param numberA             开始的数字
 @param numberB             结束的数字
 @param duration            持续时间
 @param animationOptions    动画类型
 @param format              设置字体一般属性的block
 @param completion          完成的block
 */
- (void)pp_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
     animationOptions:(PPCounterAnimationOptions)animationOptions
               format:(PPFormatBlock)format
           completion:(PPCompletionBlock)completion;


#pragma mark - attributed

/**
 富文本字体属性UIButton中的数字在指定时间从 numberA -> numberB,
 
 @param numberA               开始的数字
 @param numberB               结束的数字
 @param duration              持续时间
 @param attributedFormat 设置富文本字体属性的Block
 */
- (void)pp_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
     attributedFormat:(PPAttributedFormatBlock)attributedFormat;

/**
 1.富文本字体属性UIButton中的数字在指定时间从 numberA -> numberB,
 2.有结束回调
 
 @param numberA          开始的数字
 @param numberB          结束的数字
 @param duration         持续时间
 @param attributedFormat 设置富文本字体属性的Block
 @param completion       完成的Block
 */
- (void)pp_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
     attributedFormat:(PPAttributedFormatBlock)attributedFormat
           completion:(PPCompletionBlock)completion;

/**
 1.富文本字体属性UIButton中的数字在指定时间从 numberA -> numberB,
 2.可设置动画类型,
 3.有结束回调
 
 @param numberA            开始的数字
 @param numberB            结束的数字
 @param duration           持续时间
 @param animationOptions   动画类型
 @param attributedFormat   设置富文本字体属性的Block
 @param completion         完成的Block
 */
- (void)pp_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
     animationOptions:(PPCounterAnimationOptions)animationOptions
     attributedFormat:(PPAttributedFormatBlock)attributedFormat
           completion:(PPCompletionBlock)completion;

@end
