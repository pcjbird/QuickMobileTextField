//
//  QuickMaterialMobileTextField.m
//  QuickMobileTextField
//
//  Created by pcjbird on 2018/3/31.
//  Copyright © 2018年 Zero Status. All rights reserved.
//

#import "QuickMaterialMobileTextField.h"

@interface QuickMobileTextField(Material)

-(void)reformatAsPhoneNumber:(UITextField *)textField;

@end

@interface QuickMaterialMobileTextField()

@property(nonatomic, weak) UILabel*      placeholderLabel;
@end


@implementation QuickMaterialMobileTextField


-(void)reformatAsPhoneNumber:(UITextField *)textField
{
    [super reformatAsPhoneNumber:textField];
    if (!self.text || self.text.length > 0)
    {
        self.placeholderLabel.alpha = 1;
        self.attributedPlaceholder = nil;
    }
    
    CGFloat duration = 0.5;
    CGFloat delay = 0;
    CGFloat damping = 0.6;
    CGFloat velocity = 1;
    
    [UIView animateWithDuration:duration delay:delay usingSpringWithDamping:damping initialSpringVelocity:velocity options:UIViewAnimationOptionCurveEaseInOut animations:^{
        if (!self.text || self.text.length <= 0)
        {
            self.placeholderLabel.transform = CGAffineTransformIdentity;
        }
        else
        {
            self.placeholderLabel.transform = CGAffineTransformMakeTranslation(0, -self.placeholderLabel.frame.size.height - 5);
        }
     }
     completion:^(BOOL finished) {
         
     }];
}

#pragma mark - Placeholder

- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    [super setPlaceholderColor:placeholderColor];
    if([self.placeholderColor isKindOfClass:[UILabel class]])
    {
        self.placeholderLabel.attributedText = self.attributedPlaceholder;
    }
}

- (void)setPlaceholder:(NSString *)placeholder
{
    [super setPlaceholder:placeholder];
    
    if (![self.placeholderColor isKindOfClass:[UILabel class]])
    {
        UILabel* placeHolderLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 6, 0, self.frame.size.height)];
        [self addSubview:placeHolderLabel];
        self.placeholderLabel = placeHolderLabel;
    }
    self.placeholderLabel.alpha = self.placeholderLabel.alpha;
    self.placeholderLabel.attributedText = self.attributedPlaceholder;
    [self.placeholderLabel sizeToFit];
}

@end
