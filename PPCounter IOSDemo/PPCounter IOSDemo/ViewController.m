//
//  ViewController.m
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

#import "ViewController.h"
#import "PPCounter.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self change:PPCounterAnimationOptionCurveEaseInOut];
}


- (IBAction)select:(UISegmentedControl *)sender
{
    [self change:sender.selectedSegmentIndex+1];
}

- (void)change:(PPCounterAnimationOptions)animationOptions
{
    [self exampleLabel1:animationOptions];
    [self exampleLabel2:animationOptions];
    [self exampleLabel3:animationOptions];
    
    [self exampleButton1:animationOptions];
    [self exampleButton2:animationOptions];
    [self exampleButton3:animationOptions];
}

#pragma mark - UIlabel

- (void)exampleLabel1:(PPCounterAnimationOptions)animationOptions
{
    // 设置动画类型
    self.label1.animationOptions = animationOptions;
    
    // 开始计数
    [self.label1 pp_fromNumber:0 toNumber:50 duration:1.5f format:^NSString *(CGFloat number) {
        return [NSString stringWithFormat:@"%.0f",number];
    }];
    
}

- (void)exampleLabel2:(PPCounterAnimationOptions)animationOptions
{

    self.label2.animationOptions = animationOptions;
    
    [self.label2 pp_fromNumber:0 toNumber:100 duration:1.5 animationOptions:animationOptions attributedFormat:^NSAttributedString *(CGFloat number) {
        
        NSString *string = [NSString stringWithFormat:@"%ld%%",(NSInteger)number];
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        // 设置字体属性
        NSRange range = [string rangeOfString:[NSString stringWithFormat:@"%ld",(NSInteger)number]];
        [attributedString addAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:22],NSForegroundColorAttributeName:[UIColor brownColor]} range:range];
        return attributedString;
        
    } completion:^(CGFloat endNumber) {
        self.label2.textColor = [UIColor redColor];
    }];
    
}

- (void)exampleLabel3:(PPCounterAnimationOptions)animationOptions
{

    self.label3.animationOptions = animationOptions;
    
    [self.label3 pp_fromNumber:0 toNumber:2016101 duration:1.5f format:^NSString *(CGFloat number) {
        NSNumberFormatter *formatter = [NSNumberFormatter new];
        formatter.numberStyle = NSNumberFormatterDecimalStyle;
        formatter.positiveFormat = @"###,##0.00";
        NSNumber *amountNumber = [NSNumber numberWithFloat:number];
        return [NSString stringWithFormat:@"¥%@",[formatter stringFromNumber:amountNumber]];
    }];
    
}

#pragma mark - UIButton
- (void)exampleButton1:(PPCounterAnimationOptions)animationOptions
{
    // 设置动画类型
    self.button1.animationOptions = animationOptions;
    
    // 开始计数
    [self.button1 pp_fromNumber:0 toNumber:50 duration:1.5f format:^NSString *(CGFloat number) {
        
        return [NSString stringWithFormat:@"%.0f",number];
    }];

}

- (void)exampleButton2:(PPCounterAnimationOptions)animationOptions
{
    self.button2.animationOptions = animationOptions;
    
    [self.button2 pp_fromNumber:0 toNumber:100 duration:1.5 animationOptions:animationOptions attributedFormat:^NSAttributedString *(CGFloat number) {
        
        NSString *string = [NSString stringWithFormat:@"%ld%%",(NSInteger)number];
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        // 设置字体属性
        NSRange range = [string rangeOfString:[NSString stringWithFormat:@"%ld",(NSInteger)number]];
        [attributedString addAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:22],NSForegroundColorAttributeName:[UIColor orangeColor]} range:range];
        return attributedString;
        
    } completion:^(CGFloat endNumber) {
        [self.button2 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    }];
}

- (void)exampleButton3:(PPCounterAnimationOptions)animationOptions
{
    self.button3.animationOptions = animationOptions;
    
    [self.button3 pp_fromNumber:0 toNumber:50 duration:1.5f format:^NSString *(CGFloat number) {
        
        NSNumberFormatter *formatter = [NSNumberFormatter new];
        formatter.numberStyle = NSNumberFormatterDecimalStyle;
        formatter.positiveFormat = @"###,##0.00";
        NSNumber *amountNumber = [NSNumber numberWithFloat:number];
        return [NSString stringWithFormat:@"¥%@",[formatter stringFromNumber:amountNumber]];
    }];

}



@end
