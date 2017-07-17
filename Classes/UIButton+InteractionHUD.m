//
//  UIButton+InteractionHUD.m
//  MRButtonCollection
//
//  Created by MrXir on 2017/7/17.
//  Copyright © 2017年 MrXir. All rights reserved.
//

#import "UIButton+InteractionHUD.h"

#import <objc/runtime.h>

@implementation UIButton (InteractionHUD)

@dynamic active;

@dynamic titleActiveColor;

@dynamic titleInactiveColor;

@dynamic backgroundActiveColor;

@dynamic backgroundInactiveColor;

- (void)setActive:(BOOL)active
{
    if (active != self.active) {
        objc_setAssociatedObject(self, @"active", @(active), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        if (self.active) {
            
            self.userInteractionEnabled = YES;
            
            if (self.titleActiveColor) {
                [self setTitleColor:self.titleActiveColor forState:UIControlStateNormal];
            }
            
            if (self.backgroundActiveColor) {
                self.backgroundColor = self.backgroundActiveColor;
            }
            
        } else {
            
            self.userInteractionEnabled = NO;
            
            if (self.titleInactiveColor) {
                [self setTitleColor:self.titleInactiveColor forState:UIControlStateNormal];
            }
            
            if (self.backgroundInactiveColor) {
                self.backgroundColor = self.backgroundInactiveColor;
            }
            
        }
        
    }
    
}

- (BOOL)active
{
    id objc = objc_getAssociatedObject(self, @"active");
    
    if ([objc isKindOfClass:[NSNumber class]]) {
        return [objc boolValue];
    } else {
        return YES;
    }
}

- (void)setTitleActiveColor:(UIColor *)titleActiveColor
{
    if (![titleActiveColor isEqual:self.titleActiveColor]) {
        objc_setAssociatedObject(self, @"titleActiveColor", titleActiveColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

- (UIColor *)titleActiveColor
{
    id objc = objc_getAssociatedObject(self, @"titleActiveColor");
    
    if ([objc isKindOfClass:[UIColor class]]) {
        return objc;
    } else {
        return nil;
    }
}

- (void)setTitleInactiveColor:(UIColor *)titleInactiveColor
{
    if (![titleInactiveColor isEqual:self.titleInactiveColor]) {
        objc_setAssociatedObject(self, @"titleInactiveColor", titleInactiveColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

- (UIColor *)titleInactiveColor
{
    id objc = objc_getAssociatedObject(self, @"titleInactiveColor");
    
    if ([objc isKindOfClass:[UIColor class]]) {
        return objc;
    } else {
        return nil;
    }
}

- (void)setBackgroundActiveColor:(UIColor *)backgroundActiveColor
{
    if (![backgroundActiveColor isEqual:self.backgroundActiveColor]) {
        objc_setAssociatedObject(self, @"backgroundActiveColor", backgroundActiveColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

- (UIColor *)backgroundActiveColor
{
    id objc = objc_getAssociatedObject(self, @"backgroundActiveColor");
    
    if ([objc isKindOfClass:[UIColor class]]) {
        return objc;
    } else {
        return nil;
    }
}

- (void)setBackgroundInactiveColor:(UIColor *)backgroundInactiveColor
{
    if (![backgroundInactiveColor isEqual:self.backgroundInactiveColor]) {
        objc_setAssociatedObject(self, @"backgroundInactiveColor", backgroundInactiveColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

- (UIColor *)backgroundInactiveColor
{
    id objc = objc_getAssociatedObject(self, @"backgroundInactiveColor");
    
    if ([objc isKindOfClass:[UIColor class]]) {
        return objc;
    } else {
        return nil;
    }
}

@end
