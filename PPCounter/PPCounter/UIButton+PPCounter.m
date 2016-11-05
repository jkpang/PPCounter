//
//  UIButton+PPCounter.m
//  PPCounter
//
//  Created by AndyPang on 16/10/17.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

#import "UIButton+PPCounter.h"
#import <objc/runtime.h>

@implementation UIButton (PPCounter)

- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration formatBlock:(PPFormatBlock)formatBlock
{
    
    [self pp_fromNumber:numberA toNumber:numberB duration:duration animationType:PPCounterAnimationTypeEaseOut formatBlock:formatBlock completeBlock:nil];
}

- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration formatBlock:(PPFormatBlock)formatBlock completeBlock:(PPCompletionBlock)completionBlock
{
    [self pp_fromNumber:numberA toNumber:numberB duration:duration animationType:PPCounterAnimationTypeEaseOut formatBlock:formatBlock completeBlock:completionBlock];
}

- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock
{
    
    [self pp_fromNumber:numberA toNumber:numberB duration:duration animationType:PPCounterAnimationTypeEaseOut attributedFormatBlock:attributedFormatBlock completeBlock:nil];
}

- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock completeBlock:(PPCompletionBlock)completionBlock
{
    [self pp_fromNumber:numberA toNumber:numberB duration:duration animationType:PPCounterAnimationTypeEaseOut attributedFormatBlock:attributedFormatBlock completeBlock:completionBlock];
}

#pragma mark - normal font
- (void)pp_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
        animationType:(PPCounterAnimationType)animationType
          formatBlock:(PPFormatBlock)formatBlock
        completeBlock:(PPCompletionBlock)completionBlock
{
    if (self.counterAnimationType) {animationType = self.counterAnimationType;}
    
    [[PPCounterEngine counterEngine] fromNumber:numberA toNumber:numberB duration:duration animationType:animationType currentNumber:^(CGFloat number) {
        
        formatBlock ? [self setTitle:formatBlock(number) forState:UIControlStateNormal] : nil ;
        
    } complete:completionBlock];
    
}

#pragma mark - attributed font
- (void)pp_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
        animationType:(PPCounterAnimationType)animationType
attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock
        completeBlock:(PPCompletionBlock)completionBlock
{
    if (self.counterAnimationType) {animationType = self.counterAnimationType;}
    
    [[PPCounterEngine counterEngine] fromNumber:numberA toNumber:numberB duration:duration animationType:animationType currentNumber:^(CGFloat number) {
        
        attributedFormatBlock ? [self setAttributedTitle:attributedFormatBlock(number) forState:UIControlStateNormal] : nil ;
        
    } complete:completionBlock];
}

#pragma mark - setter/getter

- (void)setCounterAnimationType:(PPCounterAnimationType)counterAnimationType
{
    objc_setAssociatedObject(self, &kPPCounterAnimationType, @(counterAnimationType), OBJC_ASSOCIATION_ASSIGN);
}

- (PPCounterAnimationType)counterAnimationType
{
    return [objc_getAssociatedObject(self, &kPPCounterAnimationType) integerValue];
}
@end
