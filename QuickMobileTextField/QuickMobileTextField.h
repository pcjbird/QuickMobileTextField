//
//  QuickMobileTextField.h
//  QuickMobileTextField
//
//  Created by pcjbird on 2018/3/30.
//  Copyright © 2018年 Zero Status. All rights reserved.
//
//  框架名称:QuickMobileTextField
//  框架功能:A Chinese mainland area mobile phone number input textfield. 中国大陆地区手机号码输入文本框。
//  修改记录:
//     pcjbird    2018-03-30  Version:1.0.0 Build:201803300001
//                            1.首次发布SDK版本
//

#import <UIKit/UIKit.h>

//! Project version number for QuickMobileTextField.
FOUNDATION_EXPORT double QuickMobileTextFieldVersionNumber;

//! Project version string for QuickMobileTextField.
FOUNDATION_EXPORT const unsigned char QuickMobileTextFieldVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <QuickMobileTextField/PublicHeader.h>

/**
 *@brief A Chinese mainland area mobile phone number input textfield. 中国大陆地区手机号码输入文本框。
 */
@interface QuickMobileTextField : UITextField<UITextFieldDelegate>


/**
 *@brief 手机号码(不含空格)
 */
@property(nonatomic, strong) NSString*  mobile;

@end
