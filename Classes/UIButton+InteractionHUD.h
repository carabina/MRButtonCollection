//
//  UIButton+InteractionHUD.h
//  MRButtonCollection
//
//  Created by MrXir on 2017/7/17.
//  Copyright © 2017年 MrXir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (InteractionHUD)

@property (nonatomic, assign) IBInspectable BOOL active;

@property (nonatomic, strong) IBInspectable UIColor *titleActiveColor;
@property (nonatomic, strong) IBInspectable UIColor *titleInactiveColor;

@property (nonatomic, strong) IBInspectable UIColor *backgroundActiveColor;
@property (nonatomic, strong) IBInspectable UIColor *backgroundInactiveColor;

@end
