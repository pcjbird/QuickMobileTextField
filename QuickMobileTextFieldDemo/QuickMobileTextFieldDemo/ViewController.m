//
//  ViewController.m
//  QuickMobileTextFieldDemo
//
//  Created by pcjbird on 2018/3/30.
//  Copyright © 2018年 Zero Status. All rights reserved.
//

#import "ViewController.h"
#import <QuickMobileTextField/QuickMobileTextField.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet QuickMobileTextField *mobileTextField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.mobileTextField.mobile = @"1709";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
