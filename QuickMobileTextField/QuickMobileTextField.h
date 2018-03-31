//
//  QuickMobileTextField.h
//  QuickMobileTextField
//
//  Created by pcjbird on 2018/3/30.
//  Copyright © 2018年 Zero Status. All rights reserved.
//
//  框架名称:QuickMobileTextField
//  框架功能:A Chinese mainland area mobile phone number input textfield. 中国大陆地区手机号码格式化输入文本框。
//  修改记录:
//     pcjbird    2018-03-31  Version:1.0.6 Build:201803310004
//                            1.修正 QuickMaterialMobileTextField 在失去焦点后的显示问题
//
//     pcjbird    2018-03-31  Version:1.0.5 Build:201803310003
//                            1.修正 QuickMaterialMobileTextField 的显示问题
//
//     pcjbird    2018-03-31  Version:1.0.4 Build:201803310002
//                            1.新增 QuickMaterialMobileTextField
//
//     pcjbird    2018-03-31  Version:1.0.3 Build:201803310001
//                            1.预设键盘类型和关闭自动校正
//
//     pcjbird    2018-03-30  Version:1.0.2 Build:201803300003
//                            1.支持设置placeholder颜色
//                            2.支持设置文字在输入框内的padding
//
//     pcjbird    2018-03-30  Version:1.0.1 Build:201803300002
//                            1.修复可以无限输入的问题
//
//     pcjbird    2018-03-30  Version:1.0.0 Build:201803300001
//                            1.首次发布SDK版本
//

#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

//! Project version number for QuickMobileTextField.
FOUNDATION_EXPORT double QuickMobileTextFieldVersionNumber;

//! Project version string for QuickMobileTextField.
FOUNDATION_EXPORT const unsigned char QuickMobileTextFieldVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <QuickMobileTextField/PublicHeader.h>

/**
 *@brief A Chinese mainland area mobile phone number input textfield. 中国大陆地区手机号码格式化输入文本框。
 */
@interface QuickMobileTextField : UITextField<UITextFieldDelegate>


/**
 *@brief 手机号码(不含空格)
 */
@property(nonatomic, strong) IBInspectable NSString*  mobile;

/**
 *@brief  修改 placeholder 的颜色，默认是 UIColorPlaceholder。
 */
@property(nonatomic, strong) IBInspectable UIColor *placeholderColor;

/**
 *@brief  文字在输入框内的 padding。
 */
@property(nonatomic, assign) UIEdgeInsets textInsets;

@end
