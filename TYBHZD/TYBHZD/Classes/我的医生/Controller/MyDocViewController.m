//
//  MyDocViewController.m
//  TYBHZD
//
//  Created by apple on 16/3/28.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import "MyDocViewController.h"
#import "SaoViewController.h"
#import "DoctorTableViewCell.h"
#import "DataManager.h"
@interface MyDocViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *showTableView;
//已关注
@property (weak, nonatomic) IBOutlet UIButton *hadFollowBtn;
//已咨询
@property (weak, nonatomic) IBOutlet UIButton *consultationBtn;

//已咨询的数组
@property (nonatomic,strong)NSMutableArray *hadConsultationArr;
//已关注的数组
@property (nonatomic,strong)NSMutableArray *hadFollowArr;
//记录展示咨询的还是关注的
@property (nonatomic,assign)NSInteger showWitchPage;

@end

@implementation MyDocViewController

- (NSMutableArray *)hadConsultationArr
{
    if (!_hadConsultationArr) {
        _hadConsultationArr = [NSMutableArray arrayWithArray:[DataManager showAllDoc2]];
    }
    return _hadConsultationArr;
}
- (NSMutableArray *)hadFollowArr
{
    if (!_hadFollowArr) {
        _hadFollowArr = [NSMutableArray arrayWithArray:[DataManager showAllDoc3]];
    }
    return _hadFollowArr;
}


//已关注
- (IBAction)clickHadConsultationBtn:(id)sender
{
    self.showWitchPage = 0;
    [self.showTableView reloadData];
}
//已咨询
- (IBAction)clickHadFollowBtn:(id)sender
{
    self.showWitchPage = 1;
    [self.showTableView reloadData];
}
static NSString *doctorCell = @"doctorCell";
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"我的医生";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"扫一扫" style:UIBarButtonItemStylePlain target:self action:@selector(showSaoVC:)];

    
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSFontAttributeName:[UIFont systemFontOfSize:24],
       NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    [self.showTableView registerNib:[UINib nibWithNibName:NSStringFromClass([DoctorTableViewCell class]) bundle:nil] forCellReuseIdentifier:doctorCell];
    
    self.showTableView.delegate = self;
    self.showTableView.dataSource = self;
    
    
}
- (void)showSaoVC:(UIBarButtonItem *)sender
{
    SaoViewController *saoVC = [[SaoViewController alloc]init];
    [self.navigationController pushViewController:saoVC animated:YES];
}
#pragma  mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.showWitchPage == 0)
    {
        return self.hadConsultationArr.count;
    }
    else
    {
        return self.hadFollowArr.count;
    }
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DoctorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:doctorCell forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[DoctorTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:doctorCell];
    }
    Doctor *doctor = [[Doctor alloc]init];
    if (self.showWitchPage == 0)
    {
        doctor = self.hadConsultationArr[indexPath.row];
    }
    else
    {
        doctor = self.hadFollowArr[indexPath.row];
    }
    
    cell.doctor = doctor;
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}



@end
