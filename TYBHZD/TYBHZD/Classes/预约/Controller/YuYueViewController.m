//
//  YuYueViewController.m
//  TYBHZD
//
//  Created by apple on 16/3/28.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import "YuYueViewController.h"
#import "DoctorTableViewCell.h"
#import "NearHospitalViewController.h"
#import "DataManager.h"
#import "DetailViewController.h"
@interface YuYueViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *showTableView;

//存储所有的医生信息
@property (nonatomic,strong)NSMutableArray *allDocArr;
@end

@implementation YuYueViewController
- (NSMutableArray *)allDocArr
{
    if (!_allDocArr) {
        _allDocArr = [NSMutableArray arrayWithArray:[DataManager showAllDoc]];
    }
    return _allDocArr;
}
static NSString *YuYueCell = @"YuYueCell";
- (IBAction)searchDoctor:(id)sender {
    NSLog(@"click search doctor");
}
- (IBAction)nearHospital:(id)sender {
    NSLog(@"click near hospital");
    
    NearHospitalViewController *nearHospitalVC = [[NearHospitalViewController alloc]init];
    
    [self.navigationController pushViewController:nearHospitalVC animated:YES];
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"预约";
    
    
    [self.showTableView registerNib:[UINib nibWithNibName:NSStringFromClass([DoctorTableViewCell class]) bundle:nil] forCellReuseIdentifier:YuYueCell];
    
    self.showTableView.delegate = self;
    self.showTableView.dataSource = self;
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.allDocArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DoctorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:YuYueCell forIndexPath:indexPath];
    
    
    
    if (cell == nil) {
        cell = [[DoctorTableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:YuYueCell];
    }
    
    Doctor *doctor = self.allDocArr[indexPath.row];
    cell.doctor = doctor;
    

    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    DetailViewController *detailTVC = [[DetailViewController alloc]init];
    [self.navigationController pushViewController:detailTVC animated:YES];
}










@end
