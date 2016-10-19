//
//  PPCounterConst.h
//  PPCounter
//
//  Created by AndyPang on 16/10/17.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

UIKIT_EXTERN NSString *const kPPCounterAnimationType;

typedef void(^PPCompletionBlock)(void);

typedef void(^PPCurrentNumberBlock)(CGFloat number);

typedef NSString *(^PPFormatBlock)(CGFloat number);

typedef NSAttributedString *(^PPAttributedFormatBlock)(CGFloat number);

typedef NS_ENUM(NSUInteger, PPCounterAnimationType) {
    /** 由快到慢*/
    PPCounterAnimationTypeEaseOut = 1,
    /** 由慢到快*/
    PPCounterAnimationTypeEaseIn,
    /** 由慢到快,再由快到慢*/
    PPCounterAnimationTypeEaseInOut,
    /** 匀速*/
    PPCounterAnimationTypeLinear
};
