//
//  ViewController.m
//  PPCounter OSX Demo
//
//  Created by 朵颐 on 17/3/6.
//  Copyright © 2017年 dsyc. All rights reserved.
//

#import "ViewController.h"
#import "PPCounter.h"

@interface ViewController ()
@property (weak) IBOutlet NSTextField *numberLable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[PPCounterEngine counterEngine] fromNumber:0
                                       toNumber:1000
                                       duration:2.f
                               animationOptions:PPCounterAnimationOptionCurveEaseOut
                                  currentNumber:^(CGFloat number) {
                                      self.numberLable.stringValue = [NSString stringWithFormat:@"%ld",(NSInteger)number];
    } completion:^{
        self.numberLable.textColor = [NSColor redColor];
    }];
    
    
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
