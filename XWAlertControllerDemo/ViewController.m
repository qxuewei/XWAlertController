//
//  ViewController.m
//  XWAlertControllerDemo
//
//  Created by 邱学伟 on 16/3/29.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

#import "ViewController.h"
#import "XWAlertController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    //->默认样式
    UIButton *showAlertViewDefaultBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 64)];
    [showAlertViewDefaultBtn setCenter:CGPointMake(self.view.center.x, 200)];
    [showAlertViewDefaultBtn setBackgroundColor:[UIColor yellowColor]];
    [showAlertViewDefaultBtn setTitle:@"展示默认提醒样式" forState:UIControlStateNormal];
    [showAlertViewDefaultBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [showAlertViewDefaultBtn addTarget:self action:@selector(showAlertViewDefault) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showAlertViewDefaultBtn];
    
    //->自定义样式
    UIButton *showAlertViewCustomBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 200, 64)];
    [showAlertViewCustomBtn setCenter:CGPointMake(self.view.center.x, 400)];
    [showAlertViewCustomBtn setBackgroundColor:[UIColor redColor]];
    [showAlertViewCustomBtn setTitle:@"展示自定义提醒样式" forState:UIControlStateNormal];
    [showAlertViewCustomBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [showAlertViewCustomBtn addTarget:self action:@selector(showAlertViewCustom) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showAlertViewCustomBtn];

    
}


//展示默认样式
-(void)showAlertViewDefault{
    
    //初始化->
    XWAlertController *defaultAlertVC = [XWAlertController XWAlertDefaultMessage:@"好的" alertControllerWithTitle:nil message:@"您正在展示默认提醒样式" preferredStyle:UIAlertControllerStyleAlert];
    
    //展示->
    [defaultAlertVC show];
}


//自定义展示样式->
-(void)showAlertViewCustom{
    //初始化->
    XWAlertController *customAlertVC = [XWAlertController XWAlertDefaultMessage:@"取消" alertControllerWithTitle:nil message:@"您正在展示自定义提醒样式" preferredStyle:UIAlertControllerStyleActionSheet];
    
    [customAlertVC addAction:[UIAlertAction actionWithTitle:@"打印" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"执行自定义操作,打印...");
    }]];
    
    //展示->
    [customAlertVC show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
