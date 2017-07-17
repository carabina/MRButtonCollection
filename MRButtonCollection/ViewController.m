//
//  ViewController.m
//  MRButtonCollection
//
//  Created by MrXir on 2017/7/17.
//  Copyright © 2017年 MrXir. All rights reserved.
//

#import "ViewController.h"

#import "UIButton+BaseClass.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UISegmentedControl *activeSwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.activeSwitch addTarget:self action:@selector(activeSwitchDidChange:) forControlEvents:UIControlEventValueChanged];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)activeSwitchDidChange:(UISegmentedControl *)activeSwitch
{
    [self.view.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        if ([obj isKindOfClass:[UIButton class]]) {
            
            UIButton *button = obj;
            button.active = (activeSwitch.selectedSegmentIndex == 0);
            
        }
        
    }];
}

@end
