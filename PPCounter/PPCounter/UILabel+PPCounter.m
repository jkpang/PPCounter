//
//  UILabel+PPCounter.m
//  PPCounter
//
//  Created by AndyPang on 16/10/15.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

#import "UILabel+PPCounter.h"
#import <objc/runtime.h>

@implementation UILabel (PPCounter)

- (void)pp_fromZeroToNumber:(CGFloat)number formatBlock:(PPFormatBlock)formatBlock
{
    PPCounterAnimationType animationType = self.counterAnimationType ? self.counterAnimationType : PPCounterAnimationTypeEaseOut;
    [self pp_fromNumber:0.f toNumber:number duration:1.5f animationType:animationType formatBlock:formatBlock completeBlock:nil];
}

- (void)pp_fromZeroToNumber:(CGFloat)number attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock
{
    PPCounterAnimationType animationType = self.counterAnimationType ? self.counterAnimationType : PPCounterAnimationTypeEaseOut;
    [self pp_fromNumber:0.f toNumber:number duration:1.5f animationType:animationType attributedFormatBlock:attributedFormatBlock completeBlock:nil];
}

- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB formatBlock:(PPFormatBlock)formatBlock
{
    PPCounterAnimationType animationType = self.counterAnimationType ? self.counterAnimationType : PPCounterAnimationTypeEaseOut;
    [self pp_fromNumber:numberA toNumber:numberB duration:1.5f animationType:animationType formatBlock:formatBlock completeBlock:nil];
}

- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock
{
    PPCounterAnimationType animationType = self.counterAnimationType ? self.counterAnimationType : PPCounterAnimationTypeEaseOut;
    [self pp_fromNumber:numberA toNumber:numberB duration:1.5f animationType:animationType attributedFormatBlock:attributedFormatBlock completeBlock:nil];
}

- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration formatBlock:(PPFormatBlock)formatBlock
{
    PPCounterAnimationType animationType = self.counterAnimationType ? self.counterAnimationType : PPCounterAnimationTypeEaseOut;
    [self pp_fromNumber:numberA toNumber:numberB duration:duration animationType:animationType formatBlock:formatBlock completeBlock:nil];
}

- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock
{
    PPCounterAnimationType animationType = self.counterAnimationType ? self.counterAnimationType : PPCounterAnimationTypeEaseOut;
    [self pp_fromNumber:numberA toNumber:numberB duration:duration animationType:animationType attributedFormatBlock:attributedFormatBlock completeBlock:nil];
}

#pragma mark - normal font
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration animationType:(PPCounterAnimationType)animationType formatBlock:(PPFormatBlock)formatBlock completeBlock:(PPCompletionBlock)completionBlock
{
    
    [[PPCounter counter] fromNumber:numberA toNumber:numberB duration:duration animationType:animationType currentNumber:^(CGFloat number) {
        
        formatBlock ? self.text = formatBlock(number) : nil ;
        
    } complete:completionBlock];
    
}

#pragma mark - attributed font
- (void)pp_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration animationType:(PPCounterAnimationType)animationType attributedFormatBlock:(PPAttributedFormatBlock)attributedFormatBlock completeBlock:(PPCompletionBlock)completionBlock
{
    [[PPCounter counter] fromNumber:numberA toNumber:numberB duration:duration animationType:animationType currentNumber:^(CGFloat number) {
        
        attributedFormatBlock ? self.attributedText = attributedFormatBlock(number) : nil ;
        
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
