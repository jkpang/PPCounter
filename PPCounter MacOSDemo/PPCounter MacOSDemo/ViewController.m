//
//  ViewController.m
//  PPCounter MacOSDemo
//
//  Created by AndyPang on 2017/3/6.
//  Copyright © 2017年 AndyPang. All rights reserved.
//

#import "ViewController.h"
#import "PPCounter.h"

@interface ViewController ()
@property (weak) IBOutlet NSTextField *numberLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)start:(NSButton *)sender
{
    self.numberLabel.textColor = [NSColor blackColor];
    [[PPCounterEngine counterEngine] fromNumber:0
                                       toNumber:999
                                       duration:2.f
                               animationOptions:PPCounterAnimationOptionCurveEaseOut
                                  currentNumber:^(CGFloat number) {
        self.numberLabel.stringValue = [NSString stringWithFormat:@"%ld",(NSInteger)number];
    } completion:^(CGFloat endNumber) {
        self.numberLabel.textColor = [NSColor redColor];
    }];
}

@end
