//
//  XWAlertController.m
//  XWAlertControllerDemo
//  CSDN:http://blog.csdn.net/qxuewei 
//  Created by 邱学伟 on 16/3/29.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

#import "XWAlertController.h"

@implementation XWAlertController

/** 初始化方法->类方法 */
+(instancetype)XWAlertDefaultMessage:(NSString *)defaultMessage alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle{
    XWAlertController *xwAlertController = [XWAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    //默认UIAlertAction
    UIAlertAction *defaultAlertAction = [UIAlertAction actionWithTitle:defaultMessage style:UIAlertActionStyleCancel handler:nil];
    [xwAlertController addAction:defaultAlertAction];
    return xwAlertController;
}

/** 展示提醒框 */
-(void)show{
    [[self getCurrentVC] presentViewController:self animated:YES completion:nil];
}

#pragma mark - 私有方法->
//获取当前屏幕显示的ViewController
- (UIViewController *)getCurrentVC
{
    UIViewController *result = nil;
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal)
    {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tempWindow in windows)
        {
            if (tempWindow.windowLevel == UIWindowLevelNormal)
            {
                window = tempWindow;
                break;
            }
        }
    }
    UIView *frontView = [[window subviews] objectAtIndex:0];
    id nextResponder = [frontView nextResponder];
    if ([nextResponder isKindOfClass:[UIViewController class]])
        result = nextResponder;
    else
        result = window.rootViewController;
    return result;
}
@end
