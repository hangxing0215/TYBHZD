//
//  ShowDetailTableViewController.m
//  TYBHZD
//
//  Created by apple on 16/3/29.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import "ShowDetailTableViewController.h"
#import "SessionModel.h"
@interface ShowDetailTableViewController ()

@end

@implementation ShowDetailTableViewController
 static NSString *sessionCell = @"SessionCell";
- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self.tableView  registerClass:[UITableViewCell class] forCellReuseIdentifier:sessionCell];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.resultArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:sessionCell forIndexPath:indexPath];
    if (cell == nil) {
        cell  = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:sessionCell];
    }
    SessionModel *session = self.resultArray[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"taoyibao.jpg"];
    cell.textLabel.text = session.name;
    cell.detailTextLabel.text = session.detail;
    
    return cell;
}



@end
