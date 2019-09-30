//
//  UIButton+Block.m
//  BoothTag
//
//  Created by Josh Holtz on 4/22/12.
//  Copyright (c) 2012 Josh Holtz. All rights reserved.
//
#import "MBProgressHUD.h"
#import <objc/runtime.h>

@implementation UIView (Show)

-(void)hud:(BOOL)isSuccess message:(NSString*) msg
{
    [MBProgressHUD hideAllHUDsForView:self animated:YES];
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:self];
    [self addSubview:HUD];
    UIImageView* finishImage;
    if(isSuccess)
    {
        finishImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tip_succeed"]];
    }
    else{
        finishImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tip_error"]];
    }
    finishImage.bounds = CGRectMake(0, 0, 37, 37);
    HUD.customView = finishImage;
    HUD.mode = MBProgressHUDModeCustomView;
    if(msg!=nil)
    {
        HUD.detailsLabel.text = msg;
    }
    [HUD showAnimated:YES];
    [HUD hideAnimated:YES afterDelay:1];
}

-(void)hudloading:(NSString*) msg
{
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:self];
    [self addSubview:HUD];
    HUD.mode = MBProgressHUDModeIndeterminate;
    if(msg!=nil)
    {
        HUD.label.text = msg;
    }
    [HUD showAnimated:YES];
}

-(void)hudhid
{
    [MBProgressHUD hideHUDForView:self animated:YES];
}



-(void)addBorderForTop:(BOOL)top left:(BOOL)left bottom:(BOOL)bottom right:(BOOL)right borderColor:(UIColor *)color borderWidth:(CGFloat)width{
    if (top) {
        CALayer *layer = [CALayer layer];
        layer.frame = CGRectMake(0, 0, self.frame.size.width, width);
        layer.backgroundColor = color.CGColor;
        [self.layer addSublayer:layer];
    }
    if (left) {
        CALayer *layer = [CALayer layer];
        layer.frame = CGRectMake(0, 0, width, self.frame.size.height);
        layer.backgroundColor = color.CGColor;
        [self.layer addSublayer:layer];
    }
    if (bottom) {
        CALayer *layer = [CALayer layer];
        layer.frame = CGRectMake(0, self.frame.size.height - width, self.frame.size.width, width);
        layer.backgroundColor = color.CGColor;
        [self.layer addSublayer:layer];
    }
    if (right) {
        CALayer *layer = [CALayer layer];
        layer.frame = CGRectMake(self.frame.size.width - width, 0, width, self.frame.size.height);
        layer.backgroundColor = color.CGColor;
        [self.layer addSublayer:layer];
    }
}

@end
