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


- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self updateMaterialPlaceholder:YES];
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)coder
{
    if (self = [super initWithCoder:coder]) {
        [self updateMaterialPlaceholder:YES];
    }
    return self;
}

-(void)reformatAsPhoneNumber:(UITextField *)textField
{
    [super reformatAsPhoneNumber:textField];
    [self setNeedsDisplay];
    if (!self.text || self.text.length > 0)
    {
        self.placeholderLabel.alpha = 1;
        self.attributedPlaceholder = nil;
    }
    
    CGFloat duration = 0.5;
    CGFloat delay = 0;
    CGFloat damping = 0.6;
    CGFloat velocity = 1;
    
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:duration delay:delay usingSpringWithDamping:damping initialSpringVelocity:velocity options:UIViewAnimationOptionCurveEaseInOut animations:^{
        if (!weakSelf.text || weakSelf.text.length <= 0)
        {
            weakSelf.placeholderLabel.transform = CGAffineTransformIdentity;
        }
        else
        {
            CGAffineTransform transform = CGAffineTransformIdentity;
            transform = CGAffineTransformScale(transform, 0.6, 0.6);
            transform = CGAffineTransformTranslate(transform, 0, -weakSelf.textInsets.top);
            weakSelf.placeholderLabel.transform = transform;
        }
    }
                     completion:^(BOOL finished) {
                         
                     }];
}

-(void)setTextInsets:(UIEdgeInsets)textInsets
{
    [super setTextInsets:textInsets];
    [self updateMaterialPlaceholder:NO];
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
    bounds = [super editingRectForBounds:bounds];
    if(self.text && self.text.length > 0)
    {
        bounds.origin.y += self.textInsets.top/2.0f;
    }
    return bounds;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
    bounds = [super editingRectForBounds:bounds];
    if(self.text && self.text.length > 0)
    {
        bounds.origin.y += self.textInsets.top/2.0f;
    }
    return bounds;
}

#pragma mark - Placeholder

- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    [super setPlaceholderColor:placeholderColor];
    if([self.placeholderLabel isKindOfClass:[UILabel class]])
    {
        [self updateMaterialPlaceholder:NO];
    }
}


- (void)setPlaceholder:(NSString *)placeholder
{
    [super setPlaceholder:placeholder];
    [self updateMaterialPlaceholder:YES];
    
}

-(void) updateMaterialPlaceholder:(BOOL) bResetText
{
    if (![self.placeholderLabel isKindOfClass:[UILabel class]])
    {
        UILabel* placeHolderLabel = [[UILabel alloc] initWithFrame:[self textRectForBounds:self.bounds]];
        placeHolderLabel.layer.anchorPoint = CGPointMake(0.0f, 0.0f);
        [self addSubview:placeHolderLabel];
        self.placeholderLabel = placeHolderLabel;
    }
    self.placeholderLabel.frame = [self textRectForBounds:self.bounds];
    self.placeholderLabel.alpha = self.placeholderLabel.alpha;
    if(bResetText)
    {
        self.placeholderLabel.attributedText = self.attributedPlaceholder;
    }
    NSDictionary *attributes = @{NSForegroundColorAttributeName: self.placeholderColor ? self.placeholderColor : [self.textColor colorWithAlphaComponent:0.8], NSFontAttributeName : self.font};
    self.placeholderLabel.attributedText = [[NSAttributedString alloc] initWithString:self.placeholderLabel.text ?: @"" attributes: attributes];
    self.attributedPlaceholder = nil;
}

@end
