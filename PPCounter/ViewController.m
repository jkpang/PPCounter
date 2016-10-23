//
//  ViewController.m
//  PPCounter
//
//  Created by AndyPang on 16/10/15.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

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
    
    [self change:PPCounterAnimationTypeEaseOut];
}


- (IBAction)select:(UISegmentedControl *)sender
{
    [self change:sender.selectedSegmentIndex+1];
}

- (void)change:(PPCounterAnimationType)animationType
{
    [self exampleLabel1:animationType];
    [self exampleLabel2:animationType];
    [self exampleLabel3:animationType];
    
    [self exampleButton1:animationType];
    [self exampleButton2:animationType];
    [self exampleButton3:animationType];
}

#pragma mark - UIlabel

- (void)exampleLabel1:(PPCounterAnimationType)animationType
{
    // 设置动画类型
    self.label1.counterAnimationType = animationType;
    
    // 开始计数
    [self.label1 pp_fromNumber:0 toNumber:50 duration:1.5f formatBlock:^NSString *(CGFloat number) {
        return [NSString stringWithFormat:@"%.0f",number];
    }];
    
}

- (void)exampleLabel2:(PPCounterAnimationType)animationType
{

    self.label2.counterAnimationType = animationType;
    
    [self.label2 pp_fromNumber:0 toNumber:100 duration:1.5 animationType:animationType attributedFormatBlock:^NSAttributedString *(CGFloat number) {
        
        NSString *string = [NSString stringWithFormat:@"%ld%%",(NSInteger)number];
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        // 设置字体属性
        NSRange range = [string rangeOfString:[NSString stringWithFormat:@"%ld",(NSInteger)number]];
        [attributedString addAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:22],NSForegroundColorAttributeName:[UIColor brownColor]} range:range];
        return attributedString;
        
    } completeBlock:^{
        
        self.label2.textColor = [UIColor redColor];
        
    }];
    
}

- (void)exampleLabel3:(PPCounterAnimationType)animationType
{

    self.label3.counterAnimationType = animationType;
    
    [self.label3 pp_fromNumber:0 toNumber:2016101 duration:1.5f formatBlock:^NSString *(CGFloat number) {
        NSNumberFormatter *formatter = [NSNumberFormatter new];
        formatter.numberStyle = NSNumberFormatterDecimalStyle;
        formatter.positiveFormat = @"###,##0.00";
        NSNumber *amountNumber = [NSNumber numberWithFloat:number];
        return [NSString stringWithFormat:@"¥%@",[formatter stringFromNumber:amountNumber]];
    }];
    
}

#pragma mark - UIButton
- (void)exampleButton1:(PPCounterAnimationType)animationType
{
    // 设置动画类型
    self.button1.counterAnimationType = animationType;
    
    // 开始计数
    [self.button1 pp_fromNumber:0 toNumber:50 duration:1.5f formatBlock:^NSString *(CGFloat number) {
        
        return [NSString stringWithFormat:@"%.0f",number];
    }];

}

- (void)exampleButton2:(PPCounterAnimationType)animationType
{
    self.button2.counterAnimationType = animationType;
    
    [self.button2 pp_fromNumber:0 toNumber:100 duration:1.5 animationType:animationType attributedFormatBlock:^NSAttributedString *(CGFloat number) {
        
        NSString *string = [NSString stringWithFormat:@"%ld%%",(NSInteger)number];
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        // 设置字体属性
        NSRange range = [string rangeOfString:[NSString stringWithFormat:@"%ld",(NSInteger)number]];
        [attributedString addAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:22],NSForegroundColorAttributeName:[UIColor orangeColor]} range:range];
        return attributedString;
        
    } completeBlock:^{
        
        [self.button2 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
        
    }];
}

- (void)exampleButton3:(PPCounterAnimationType)animationType
{
    self.button3.counterAnimationType = animationType;
    
    [self.button3 pp_fromNumber:0 toNumber:50 duration:1.5f formatBlock:^NSString *(CGFloat number) {
        
        NSNumberFormatter *formatter = [NSNumberFormatter new];
        formatter.numberStyle = NSNumberFormatterDecimalStyle;
        formatter.positiveFormat = @"###,##0.00";
        NSNumber *amountNumber = [NSNumber numberWithFloat:number];
        return [NSString stringWithFormat:@"¥%@",[formatter stringFromNumber:amountNumber]];
    }];

}



@end
