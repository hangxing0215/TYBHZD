//
//  SHTabBar.m
//  宋航百思不得姐01
//
//  Created by admin on 16/1/25.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "SHTabBar.h"
@interface SHTabBar ()

@property (nonatomic,weak)UIButton *publishButton;

@end

@implementation SHTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        
        [self setBackgroundImage:[UIImage imageNamed:@"tabbar-light"]];
        
    }
    return self;
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //设置frame

    
    CGFloat buttonY = 0;
    CGFloat buttonW = self.bounds.size.width / 4.0;
    CGFloat buttonH = self.bounds.size.height;
    NSInteger index = 0;
    //按钮是不是被点击
    static BOOL added = NO;
    
    for (UIControl *button in self.subviews)
    {
        if ([button isKindOfClass: NSClassFromString(@"UITabBarButton")])
        {
            CGFloat buttonX = buttonW * index;
            button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
            index++;
            
            if (added == NO)
            {
                [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
                
            }
        }
        
        
    }
    added = YES;
}
- (void)buttonClick
{
    [[NSNotificationCenter defaultCenter]postNotificationName:SHTabbarDidSelectNotifation object:nil userInfo:nil];
}

@end
