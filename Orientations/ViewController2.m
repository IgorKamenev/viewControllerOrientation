//
//  ViewController2.m
//  Orientations
//
//  Created by Igor Kamenev on 10/11/14.
//  Copyright (c) 2014 Igor Kamenev. All rights reserved.
//

#import "ViewController2.h"
#import <objc/runtime.h>
#import <objc/message.h>

@interface ViewController2 ()

@end

@implementation ViewController2

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    // данные хаки работают только в симуляторе - на девайсе не работают :(
    [[UIApplication sharedApplication] setStatusBarOrientation: UIInterfaceOrientationPortrait animated:NO];
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)])
    {
        [[UIDevice currentDevice] performSelector:@selector(setOrientation:) withObject:@(UIInterfaceOrientationPortrait) afterDelay:0];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor blueColor];

}

-(BOOL)shouldAutorotate
{
    return YES;
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

@end
