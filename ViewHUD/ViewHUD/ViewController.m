//
//  ViewController.m
//  ViewHUD
//
//  Created by 段庆烨 on 2019/9/30.
//  Copyright © 2019 Gioures. All rights reserved.
//

#import "ViewController.h"
#import "ViewHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view hudloading:@"正在加载请稍后"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view hud:YES message:@"加载成功"];
    });
    
}


@end
