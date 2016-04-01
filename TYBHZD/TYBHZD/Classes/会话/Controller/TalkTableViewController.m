//
//  TalkTableViewController.m
//  TYBHZD
//
//  Created by apple on 16/3/29.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import "TalkTableViewController.h"
#import "TalkTableViewCell.h"
@interface TalkTableViewController ()

@property (nonatomic,strong)TalkTableViewCell *cell;

@end

@implementation TalkTableViewController
 static NSString *talkCell = @"talkCell";
- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.navigationItem.title = @"涛医宝小助手";
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([TalkTableViewCell class]) bundle:nil] forCellReuseIdentifier:talkCell];
    
    self.tableView.tableFooterView = [UIView new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    self.cell = [tableView dequeueReusableCellWithIdentifier:talkCell forIndexPath:indexPath];
    
    if (self.cell == nil) {
        self.cell = [[TalkTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:talkCell];
    }
    
    return self.cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

@end
