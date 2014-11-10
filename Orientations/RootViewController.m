//
//  ViewController.m
//  Orientations
//
//  Created by Igor Kamenev on 10/11/14.
//  Copyright (c) 2014 Igor Kamenev. All rights reserved.
//

#import "RootViewController.h"
#import "ViewController2.h"

@interface RootViewController ()



@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor redColor];

    UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [button setTitle:@"Next" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(didTap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void) didTap
{
    ViewController2* vc = [ViewController2 new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
