//
//  SessionTableViewController.m
//  TYBHZD
//
//  Created by apple on 16/3/29.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import "SessionTableViewController.h"
#import "SessionModel.h"
#import "ShowDetailTableViewController.h"
#import "TalkTableViewController.h"

//自定义cell
#import "SessionTableViewCell.h"
@interface SessionTableViewController ()<UISearchResultsUpdating,UISearchBarDelegate>

//存储所有的消息信息
@property (nonatomic,strong)NSArray *allSessions;
//用户记录搜索控制器
@property (nonatomic,strong)UISearchController *searchController;

//用于展示搜索结果的表视图控制器
@property (nonatomic,strong)ShowDetailTableViewController *showDetailTVC;


@end

@implementation SessionTableViewController

//懒加载所有消息
- (NSArray *)allSessions
{
    if (!_allSessions) {
        _allSessions = [SessionModel demoData];
    }
    return _allSessions;
}

static NSString *sessionCell = @"sessionCell";
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([SessionTableViewCell class]) bundle:nil] forCellReuseIdentifier:sessionCell ];
    
    self.navigationItem.title = @"会话";
    
//    [self.navigationController.navigationBar setTitleTextAttributes:
//     @{NSFontAttributeName:[UIFont systemFontOfSize:24],
//       NSForegroundColorAttributeName:[UIColor whiteColor]}];

    //创建用户展示搜索结果的表VC实例
    self.showDetailTVC = [[ShowDetailTableViewController alloc]init];
    //创建搜索控制器的实例
    self.searchController = [[UISearchController alloc]initWithSearchResultsController:self.showDetailTVC];
    //设置搜索条的尺寸为自适应
    [self.searchController.searchBar sizeToFit];
    self.tableView.tableHeaderView = self.searchController.searchBar;
    //设置搜索控制器结果更新代理对象
    self.searchController.searchResultsUpdater = self;
    
    //允许当前界面上切换展示数据的上下文对象
    //此属性设置为yes，才能在当前界面上切换
    //由另一个表视图来显示搜索结果
    self.definesPresentationContext = YES;
    
    //为了点击searchBar上的类别按钮时，也能立即响应
    //所以需要设置searchBar的代理
    self.searchController.searchBar.delegate = self;
    
    self.tableView.tableFooterView = [UIView new];
    
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.allSessions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SessionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:sessionCell forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[SessionTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:sessionCell];
    }
    SessionModel *sessionModel = self.allSessions[indexPath.row];
    
    cell.headerImageView.image = [UIImage imageNamed:sessionModel.headerImageName];
    cell.nameLabel.text = sessionModel.name;
    cell.timeLabel.text = sessionModel.sendTime;
    cell.detailLabel1.text = sessionModel.detail;
    
    return cell;
}
#pragma  mark - UISearchBarDelegate协议
 - (void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope
{
    [self updateSearchResultsForSearchController:self.searchController];
    
    
}
#pragma mark - UISearchResultUpdating协议
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController
{
    //从SearchBar中获取用户在文本框中输入的文字
    NSString *searchText = searchController.searchBar.text;
    //到数组中对比
    NSMutableArray *resultArray = [NSMutableArray array];
    for (SessionModel *session in self.allSessions) {
        NSRange range = [session.detail rangeOfString:searchText];
        //则将商品记录到结果数组中
        if (range.length > 0 ) {
            [resultArray addObject:session];
        }
    }
    
    //将要显示的数据结果  给showResultTVC传过去
    self.showDetailTVC.resultArray = resultArray;
    
    //更新视图显示数据
    [self.showDetailTVC.tableView reloadData];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    //去除点击后的灰色背景
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    TalkTableViewController *talkTVC = [[TalkTableViewController alloc]initWithStyle:UITableViewStylePlain];
    
    [self.navigationController pushViewController:talkTVC animated:YES];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 65;
}












@end
