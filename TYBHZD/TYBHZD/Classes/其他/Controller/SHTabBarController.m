//
//  SHTabBarController.m
//  宋航百思不得姐01
//
//  Created by admin on 16/1/25.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "SHTabBarController.h"
#import "SHTabBar.h"
#import "SHNavigationController.h"
#import "TestViewController.h"
//我
#import "MeTableViewController.h"
//我的医生
#import "MyDocViewController.h"
//预约
#import "YuYueViewController.h"
//会话
#import "SessionTableViewController.h"
@interface SHTabBarController ()

@end

@implementation SHTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupChildVc:[[YuYueViewController alloc] init] title:@"预约" imageName:@"tabBar_me_click_icon" selectedImageName:@"tabBar_me_click_icon"];
   [self setupChildVc:[[SessionTableViewController alloc] initWithStyle:UITableViewStylePlain] title:@"会话" imageName:@"tabBar_me_click_icon" selectedImageName:@"tabBar_me_click_icon"];
    [self setupChildVc:[[MyDocViewController alloc] init] title:@"我的医生" imageName:@"tabBar_me_click_icon" selectedImageName:@"tabBar_me_click_icon"];
    [self setupChildVc:[[MeTableViewController alloc]init] title:@"我" imageName:@"tabBar_me_click_icon" selectedImageName:@"tabBar_me_click_icon"];
    //kvc  赋值
    [self setValue:[[SHTabBar alloc]init] forKey:@"tabBar"];
    
}

- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    //设置文字和图片
    NSMutableDictionary *attri = [NSMutableDictionary dictionary];
    attri[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attri[NSForegroundColorAttributeName] = [UIColor grayColor];
    NSMutableDictionary *selectedAttri = [NSMutableDictionary dictionary];
    selectedAttri[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectedAttri[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    vc.tabBarItem.title = title;
    [vc.tabBarItem setTitleTextAttributes:attri
                                  forState:UIControlStateNormal];
    [vc.tabBarItem setTitleTextAttributes:selectedAttri
                                  forState:UIControlStateSelected];
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    UIImage *image = [UIImage imageNamed:selectedImageName];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = image;
     
    //添加导航控制器
    SHNavigationController *navi = [[SHNavigationController alloc]initWithRootViewController:vc];
    
        
    [self addChildViewController:navi];

}

@end
