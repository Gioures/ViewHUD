//
//  UIButton+Block.h
//  BoothTag
//
//  Created by Josh Holtz on 4/22/12.
//  Copyright (c) 2012 Josh Holtz. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface UIView (Show)


/// 显示成功或者失败的提示 1秒后消失
/// @param isSuccess 操作成功或者失败
/// @param msg 提示信息
-(void)hud:(BOOL)isSuccess message:(NSString*) msg;


/// 显示等待的提示
/// @param msg 提示消息
-(void)hudloading:(NSString*) msg;


/// 消失
-(void)hudhid;


/// 给View加边框
-(void)addBorderForTop:(BOOL)top left:(BOOL)left bottom:(BOOL)bottom right:(BOOL)right borderColor:(UIColor *)color borderWidth:(CGFloat)width;

@end
