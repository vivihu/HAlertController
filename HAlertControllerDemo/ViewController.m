//
//  ViewController.m
//  HAlertController
//
//  Created by dj-xxzx-10065 on 16/3/7.
//  Copyright © 2016年 Dong jing Ltd. All rights reserved.
//

#import "ViewController.h"
#import "HAlertController.h"

@interface ViewController ()

@property (nonatomic, strong) HAlertAction *cancelAction;
@property (nonatomic, strong) HAlertAction *destruAction;

@end

@implementation ViewController

- (IBAction)showAlertView:(id)sender
{
    HAlertController *controller = [HAlertController alertWithTitle:@"title"
                                                            message:@"message"
                                                   cancelButtonItem:self.cancelAction
                                              destructiveButtonItem:self.destruAction];
    
    [controller addButtonItem:[HAlertAction actionWithTitle:@"胡伟伟" handler:^(NSString * _Nonnull title) {
        NSLog(@"%@", title);
    }]];

    [controller showIn:self];
}

- (IBAction)showActionSheet:(id)sender
{
    HAlertController *controller = [HAlertController actionSheetWithTitle:@"title"
                                                                  message:@"message"
                                                         cancelButtonItem:self.cancelAction
                                                    destructiveButtonItem:self.destruAction];
    [controller addButtonItem:[HAlertAction actionWithTitle:@"胡伟伟" handler:^(NSString * _Nonnull title) {
        NSLog(@"%@", title);
    }]];
    
    [controller showIn:self];
}

#pragma mark - lazy loading
- (HAlertAction *)cancelAction
{
    if (!_cancelAction) {
        _cancelAction = [HAlertAction actionWithTitle:@"取消" handler:^(NSString * _Nonnull title) {
            NSLog(@"%@", title);
        }];
    }
    return _cancelAction;
}

- (HAlertAction *)destruAction
{
    if (!_destruAction) {
        _destruAction = [HAlertAction actionWithTitle:@"删除" handler:^(NSString * _Nonnull title) {
            NSLog(@"%@", title);
        }];
    }
    return _destruAction;
}

@end
