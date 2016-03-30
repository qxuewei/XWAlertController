# XWAlertController
一个对于UIAlertViewController的封装类,支持自定义 

//初始化->

    XWAlertController *defaultAlertVC = [XWAlertController XWAlertDefaultMessage:@"好的" alertControllerWithTitle:nil message:@"您正在展示默认提醒样式" preferredStyle:UIAlertControllerStyleAlert];
    
//展示->

    [defaultAlertVC show];

