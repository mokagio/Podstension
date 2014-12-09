//
//  TodayViewController.m
//  podstension-today
//
//  Created by Gio on 09/12/2014.
//  Copyright (c) 2014 mokagio. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>
#import <UIColor+FlatColors.h>
#import <SillyClass.h>

@interface TodayViewController () <NCWidgetProviding>

@property (nonatomic, strong) IBOutlet UILabel *sillyLabel;

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.sillyLabel.textColor = [UIColor flatPomegranateColor];
    self.sillyLabel.text = [SillyClass sillyMethod];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

@end
