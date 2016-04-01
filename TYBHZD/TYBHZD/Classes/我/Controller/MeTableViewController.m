//
//  MeTableViewController.m
//  TYBHZD
//
//  Created by qpw on 16/3/18.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import "MeTableViewController.h"
@interface MeTableViewController ()
@property (nonatomic,strong)NSMutableArray *allLabelArray;
@end

@implementation MeTableViewController

static NSString *MeCell = @"MeCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //存储列表文字的数组
    NSMutableArray *allLabelArray = [NSMutableArray array ];
    [allLabelArray addObject:@"我的账户"];
    [allLabelArray addObject:@"咨询服务"];
    [allLabelArray addObject:@"病例"];
    [allLabelArray addObject:@"我的预约"];
    [allLabelArray addObject:@"健康工具"];
    [allLabelArray addObject:@"设置"];
    [allLabelArray addObject:@"联系客服"];
    [allLabelArray addObject:@"常见问题"];
    [allLabelArray addObject:@"使用手册"];
    [allLabelArray addObject:@"意见反馈"];
    self.allLabelArray = allLabelArray;
    
    
    
    self.navigationItem.title = @"我";
    //
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:MeCell];
    
    [self.navigationController.navigationBar setTitleTextAttributes:
  @{NSFontAttributeName:[UIFont systemFontOfSize:24],
    NSForegroundColorAttributeName:[UIColor whiteColor]}];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 6;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 5;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    switch (section) {
        case 0:
            return 1;
            break;
        case 1:
            return 2;
            break;
        case 2:
            return 2;
            break;
        case 3:
            return 1;
            break;
        case 4:
            return 1;
            break;
        case 5:
            return 4;
            break;
            
        default:
            break;
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MeCell forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:MeCell];
    }
    if (indexPath.section == 0)
    {
        cell.imageView.image = [UIImage imageNamed:@"header_cry_icon"];
    }
    else if (indexPath.section == 1)
    {
        if (indexPath.row == 0)
        {
            cell.imageView.image = [UIImage imageNamed:@"header_cry_icon"];
            cell.textLabel.text = self.allLabelArray[0];
        }
        else
        {
            cell.imageView.image = [UIImage imageNamed:@"header_cry_icon"];
            cell.textLabel.text = self.allLabelArray[1];
        }
    }
    else if (indexPath.section == 2)
    {
        if (indexPath.row == 0) {
            cell.imageView.image = [UIImage imageNamed:@"header_cry_icon"];
            cell.textLabel.text = self.allLabelArray[2];
        }
        else
        {
            cell.imageView.image = [UIImage imageNamed:@"header_cry_icon"];
            cell.textLabel.text = self.allLabelArray[3];
        }
    }
    else if (indexPath.section == 3)
    {
        cell.imageView.image = [UIImage imageNamed:@"header_cry_icon"];
        cell.textLabel.text = self.allLabelArray[4];
    }
    else if (indexPath.section == 4)
    {
        cell.imageView.image = [UIImage imageNamed:@"header_cry_icon"];
        cell.textLabel.text = self.allLabelArray[5];
    }
    else
    {
        if (indexPath.row ==0)
        {
            cell.imageView.image = [UIImage imageNamed:@"header_cry_icon"];
            cell.textLabel.text = self.allLabelArray[6];
        }
        else if (indexPath.row == 1)
        {
            cell.imageView.image = [UIImage imageNamed:@"header_cry_icon"];
            cell.textLabel.text = self.allLabelArray[7];
        }
        else if (indexPath.row == 2)
        {
            cell.imageView.image = [UIImage imageNamed:@"header_cry_icon"];
            cell.textLabel.text = self.allLabelArray[8];
        }
        else
        {
            cell.imageView.image = [UIImage imageNamed:@"header_cry_icon"];
            cell.textLabel.text = self.allLabelArray[9];
        }
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
