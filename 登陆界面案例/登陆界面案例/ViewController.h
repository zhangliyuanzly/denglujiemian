//
//  ViewController.h
//  登陆界面案例
//
//  Created by 张立远 on 2020/7/13.
//  Copyright © 2020 张立远. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    //登陆界面的组成
    //用户名提示：输入框
    //密码提示：密码输入框
    //登陆按钮
    //注册按钮
    
    //用户名提示Label
    UILabel* _lbUserName;
    
    //密码提示Label
    UILabel* _lbPassword;
    
    //用户名输入框
    UITextField* _tfUserName;
    
    //密码输入框
    UITextField* _tfPassword;
    
    //登陆按钮
    UIButton* _btLogin;
    
    //注册按钮
    UIButton* _btRegister;
}


@end

