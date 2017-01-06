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
