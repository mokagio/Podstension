//
//  ViewController.m
//  podstension
//
//  Created by Gio on 09/12/2014.
//  Copyright (c) 2014 mokagio. All rights reserved.
//

#import "ViewController.h"
#import <UIColor+FlatColors.h>
#import <SillyClass.h>

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UILabel *sillyLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor flatPomegranateColor];
    self.sillyLabel.textColor = [UIColor flatCloudsColor];
    self.sillyLabel.text = [SillyClass sillyMethod];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
