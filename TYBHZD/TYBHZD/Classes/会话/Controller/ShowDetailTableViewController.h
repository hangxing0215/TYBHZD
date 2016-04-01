//
//  ShowDetailTableViewController.h
//  TYBHZD
//
//  Created by apple on 16/3/29.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowDetailTableViewController : UITableViewController
//本控制器是被动使用的，所以要展示的数据来源是使用者
//提供，于是就需要一个公开的数组属性，用于存储要显示的数据
//这个数组中每一个元素类型都是Product类型的
@property(nonatomic,strong)NSArray *resultArray;
@end
