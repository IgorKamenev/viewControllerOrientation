//
//  NavViewController.m
//  Orientations
//
//  Created by Igor Kamenev on 10/11/14.
//  Copyright (c) 2014 Igor Kamenev. All rights reserved.
//

#import "NavViewController.h"

@interface NavViewController () <UINavigationControllerDelegate>

@end

@implementation NavViewController

-(instancetype)init
{
    self = [super init];
    
    if (self) {
        self.delegate = self;
    }
    
    return self;
}

-(BOOL)shouldAutorotate
{
    return [[self.viewControllers lastObject] shouldAutorotate];
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [[self.viewControllers lastObject] preferredInterfaceOrientationForPresentation];
}

-(NSUInteger)supportedInterfaceOrientations
{
    return [[self.viewControllers lastObject] supportedInterfaceOrientations];
}

-(UIInterfaceOrientation)navigationControllerPreferredInterfaceOrientationForPresentation:(UINavigationController *)navigationController
{
    return [[self.viewControllers lastObject] preferredInterfaceOrientationForPresentation];
}

-(NSUInteger)navigationControllerSupportedInterfaceOrientations:(UINavigationController *)navigationController
{
    return [[self.viewControllers lastObject] supportedInterfaceOrientations];
}

-(void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"will show");
}


@end
