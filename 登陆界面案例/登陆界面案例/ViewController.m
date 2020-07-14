//
//  ViewController.m
//  登陆界面案例
//
//  Created by 张立远 on 2020/7/13.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //用户名提示标签创建
    _lbUserName = [[UILabel alloc] init];
    _lbUserName.frame = CGRectMake(20, 60, 80, 40);
    _lbUserName.text = @"用户名:";
    //字体大小
    _lbUserName.font = [UIFont systemFontOfSize:20];
    //排版(靠左)
    _lbUserName.textAlignment = NSTextAlignmentLeft;
    
    _lbPassword = [[UILabel alloc] init];
    _lbPassword.frame = CGRectMake(20, 140, 80, 40);
    _lbPassword.text = @"密码:";
    _lbPassword.font = [UIFont systemFontOfSize:20];
    _lbPassword.textAlignment = NSTextAlignmentLeft;
    
    //用户名输入框
    
    _tfUserName = [[UITextField alloc] init];
    _tfUserName.frame = CGRectMake(120, 60, 180, 40);
    //提示
    _tfUserName.placeholder = @"请输入用户名";
    //风格设定(圆角)
    _tfUserName.borderStyle = UIButtonTypeRoundedRect;
    
    //密码输入框
    
    _tfPassword = [[UITextField alloc] init];
    _tfPassword.frame = CGRectMake(120, 140, 180, 40);
    _tfPassword.placeholder = @"请输入密码";
    //圆角
    _tfPassword.borderStyle = UIButtonTypeRoundedRect;
    //安全文本输入
    _tfPassword.secureTextEntry = YES;
    
    //登陆和注册btn创建
    //不能再用init，用类方法创建
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame = CGRectMake(120, 300, 80, 40);
    
    [_btLogin setTitle:@"登陆" forState:UIControlStateNormal];
    [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    
    _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btRegister.frame = CGRectMake(120, 360, 80, 40);
    [_btRegister setTitle:@"注册" forState:UIControlStateNormal];
    [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    //将所有的控件添加到视图中显示
    [self.view addSubview:_lbUserName];
    [self.view addSubview:_lbPassword];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfPassword];
    [self.view addSubview:_btLogin];
    [self.view addSubview:_btRegister];
    

}

//登陆事件函数
-(void) pressLogin{
    NSString* strName = @"zhangliyuan";
    NSString* strPass = @"123456";
    //获取输入框中的用户名和密码文字
    NSString* strTextName = _tfUserName.text;
    NSString* strTextPass = _tfPassword.text;
    
    if ([strName isEqualToString:strTextName] && [strPass isEqualToString:strTextPass]) {
        NSLog(@"用户名密码正确！");
        //弹出框需要降版本
    }else{
        NSLog(@"用户名账号或密码错误，请重新输入！");
    }
    
}

//注册事件函数
-(void)pressRegister{
    
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //回收keyboard对象
    [_tfUserName resignFirstResponder];
    [_tfPassword resignFirstResponder];
}



@end
