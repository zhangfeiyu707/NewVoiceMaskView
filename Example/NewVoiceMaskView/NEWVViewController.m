//
//  NEWVViewController.m
//  NewVoiceMaskView
//
//  Created by zhangfeiyu707 on 03/11/2020.
//  Copyright (c) 2020 zhangfeiyu707. All rights reserved.
//

#import "NEWVViewController.h"
#import "NewVoiceMaskView.h"
@interface NEWVViewController ()

@end

@implementation NEWVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NewVoiceMaskView *maskV = [NewVoiceMaskView makeViewWithMask:self.view.bounds andView:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
