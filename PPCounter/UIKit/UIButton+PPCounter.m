//
//  UIButton+PPCounter.m
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

#import "UIButton+PPCounter.h"
#import <objc/runtime.h>

@implementation UIButton (PPCounter)

- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration format:(PPFormatBlock)format
{
    [self pp_fromNumber:numberA toNumber:numberB duration:duration animationOptions:PPCounterAnimationOptionCurveEaseInOut format:format completion:nil];
}

- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration format:(PPFormatBlock)format completion:(PPCompletionBlock)completion
{
    [self pp_fromNumber:numberA toNumber:numberB duration:duration animationOptions:PPCounterAnimationOptionCurveEaseInOut format:format completion:completion];
}

- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration attributedFormat:(PPAttributedFormatBlock)attributedFormat
{
    
    [self pp_fromNumber:numberA toNumber:numberB duration:duration animationOptions:PPCounterAnimationOptionCurveEaseInOut attributedFormat:attributedFormat completion:nil];
}

- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration attributedFormat:(PPAttributedFormatBlock)attributedFormat completion:(PPCompletionBlock)completion
{
    [self pp_fromNumber:numberA toNumber:numberB duration:duration animationOptions:PPCounterAnimationOptionCurveEaseInOut attributedFormat:attributedFormat completion:completion];
}

#pragma mark - normal font
- (void)pp_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
     animationOptions:(PPCounterAnimationOptions)animationOptions
               format:(PPFormatBlock)format
           completion:(PPCompletionBlock)completion
{
    if (self.animationOptions) {animationOptions = self.animationOptions;}
    
    [[PPCounterEngine counterEngine] fromNumber:numberA toNumber:numberB duration:duration animationOptions:animationOptions currentNumber:^(CGFloat number) {
        
        format ? [self setTitle:format(number) forState:UIControlStateNormal] : nil ;
        
    } completion:completion];
    
}

#pragma mark - attributed font
- (void)pp_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
     animationOptions:(PPCounterAnimationOptions)animationOptions
     attributedFormat:(PPAttributedFormatBlock)attributedFormat
           completion:(PPCompletionBlock)completion
{
    if (self.animationOptions) {animationOptions = self.animationOptions;}
    
    [[PPCounterEngine counterEngine] fromNumber:numberA toNumber:numberB duration:duration animationOptions:animationOptions currentNumber:^(CGFloat number) {
        
        attributedFormat ? [self setAttributedTitle:attributedFormat(number) forState:UIControlStateNormal] : nil ;
        
    } completion:completion];
}

#pragma mark - setter/getter

- (void)setAnimationOptions:(PPCounterAnimationOptions)animationOptions
{
    objc_setAssociatedObject(self, &kPPCounterAnimationOptions, @(animationOptions), OBJC_ASSOCIATION_ASSIGN);
}

- (PPCounterAnimationOptions)animationOptions
{
    return [objc_getAssociatedObject(self, &kPPCounterAnimationOptions) integerValue];
}
@end
