//
//  XWAlertController.h
//  XWAlertControllerDemo
//  CSDN:http://blog.csdn.net/qxuewei 
//  Created by 邱学伟 on 16/3/29.
//  Copyright © 2016年 邱学伟. All rights reserved.
//  默认只展示默认样式,如果需要增加样式需要添加AlertAction, 如果需要监听默认样式点击事件需自定义

#import <UIKit/UIKit.h>
@interface XWAlertController : UIAlertController

/** 初始化类方法 */
+(instancetype)XWAlertDefaultMessage:(NSString *)defaultMessage alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle;

/** 展示提醒框 */
-(void)show;

@end
