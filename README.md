![logo](logo.png)
[![Build Status](http://img.shields.io/travis/pcjbird/QuickMobileTextField/master.svg?style=flat)](https://travis-ci.org/pcjbird/QuickMobileTextField)
[![Pod Version](http://img.shields.io/cocoapods/v/QuickMobileTextField.svg?style=flat)](http://cocoadocs.org/docsets/QuickMobileTextField/)
[![Pod Platform](http://img.shields.io/cocoapods/p/QuickMobileTextField.svg?style=flat)](http://cocoadocs.org/docsets/QuickMobileTextField/)
[![Pod License](http://img.shields.io/cocoapods/l/QuickMobileTextField.svg?style=flat)](https://www.apache.org/licenses/LICENSE-2.0.html)
[![CocoaPods](https://img.shields.io/cocoapods/at/QuickMobileTextField.svg)](https://github.com/pcjbird/QuickMobileTextField)
[![CocoaPods](https://img.shields.io/cocoapods/dt/QuickMobileTextField.svg)](https://github.com/pcjbird/QuickMobileTextField)
[![GitHub release](https://img.shields.io/github/release/pcjbird/QuickMobileTextField.svg)](https://github.com/pcjbird/QuickMobileTextField/releases)
[![GitHub release](https://img.shields.io/github/release-date/pcjbird/QuickMobileTextField.svg)](https://github.com/pcjbird/QuickMobileTextField/releases)
[![Website](https://img.shields.io/website-pcjbird-down-green-red/https/shields.io.svg?label=author)](https://pcjbird.github.io)


# QuickMobileTextField
### A Chinese mainland area mobile phone number input textfield. 中国大陆地区手机号码格式化输入文本框。
    
## 特性 / Features
 
 1. 中国大陆地区手机号码 3/4/4 格式化输入。
 2. 支持设置 placeholder 颜色。
 3. 支持设置文字在输入框内的间距。
 4. 预设键盘类型和关闭自动校正，自动限制输入长度。
 5. 支持设置预输入手机号，支持直接获取非格式化的手机号文本(不含空格)。
 6. 支持 xib, storyboard。
 7. 支持 Material 风格。

## 演示 / Demo
 
<p align="center"><img src="demo.gif" title="demo"></p>
    
##  安装 / Installation

方法一：`QuickMobileTextField` is available through CocoaPods. To install it, simply add the following line to your Podfile:
```
pod 'QuickMobileTextField'
```
## 使用 / Usage
```
#import <QuickMobileTextField/QuickMobileTextField.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet QuickMobileTextField *mobileTextField;
@property (weak, nonatomic) IBOutlet QuickMobileTextField *nextMobileTextField;
@property (weak, nonatomic) IBOutlet QuickMobileTextField *materialMobileTextField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.mobileTextField.mobile = @"1709";
    self.nextMobileTextField.textInsets = UIEdgeInsetsMake(4, 15, 4, 15);
    self.materialMobileTextField.textInsets = UIEdgeInsetsMake(15, 15, 15, 15);
}

@end
```
## 关注我们 / Follow us
  
<a href="https://itunes.apple.com/cn/app/iclock-一款满足-挑剔-的翻页时钟与任务闹钟/id1128196970?pt=117947806&ct=com.github.pcjbird.QuickMobileTextField&mt=8"><img src="https://github.com/pcjbird/AssetsExtractor/raw/master/iClock.gif" width="400" title="iClock - 一款满足“挑剔”的翻页时钟与任务闹钟"></a>    
  
[![Twitter URL](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)](https://twitter.com/intent/tweet?text=https://github.com/pcjbird/QuickMobileTextField)
[![Twitter Follow](https://img.shields.io/twitter/follow/pcjbird.svg?style=social)](https://twitter.com/pcjbird)
