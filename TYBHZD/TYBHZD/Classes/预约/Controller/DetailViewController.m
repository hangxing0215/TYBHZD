//
//  DetailViewController.m
//  TYBHZD
//
//  Created by apple on 16/3/31.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    NSLog(@"%@",NSStringFromCGRect(self.view.frame));
    
    //顶部视图
    UIImageView *headerImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"header_cry_icon"]];
    headerImageView.backgroundColor = [UIColor yellowColor];
    [self.scrollView addSubview:headerImageView];
    [headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.mas_equalTo(20);
        make.width.height.mas_equalTo(self.view.bounds.size.width * 0.15);
    }];
    
    //姓名标签
    UILabel *nameLabel = [[UILabel alloc]init];
    //测试
    nameLabel.text = @"张三丰";
    nameLabel.backgroundColor = [UIColor redColor];
    [self.scrollView addSubview:nameLabel];
    [nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.scrollView).mas_equalTo(20);
        make.left.mas_equalTo(headerImageView.mas_right).mas_equalTo(20);
    }];
    
    
    //义诊图片
    UIImageView *yizhenImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"yizhen"]];
    [self.scrollView addSubview:yizhenImageView];
    [yizhenImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.scrollView).mas_equalTo(20);
        make.left.mas_equalTo(nameLabel.mas_right).mas_equalTo(20);
    }];
    
    //已认证图片
    UIImageView *yirenzhengImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"yirenzheng"]];
    [self.scrollView addSubview:yirenzhengImageView];
    [yirenzhengImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.scrollView).mas_equalTo(20);
        make.left.mas_equalTo(yizhenImageView.mas_right).mas_equalTo(20);
    }];
    
    
    //医院标签
    UILabel *hospitalLabel = [[UILabel alloc]init];
    //测试
    hospitalLabel.text = @"西安步长心脑血管病医院";
    hospitalLabel.backgroundColor = [UIColor redColor];
    [self.scrollView addSubview:hospitalLabel];
    [hospitalLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(nameLabel.mas_bottom).mas_equalTo(15);
        make.left.mas_equalTo(headerImageView.mas_right).mas_equalTo(20);
    }];

    //职位标签
    UILabel *positionLabel = [[UILabel alloc]init];
    //测试
    positionLabel.text = @"心血管内科";
    positionLabel.backgroundColor = [UIColor redColor];
    [self.scrollView addSubview:positionLabel];
    [positionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(hospitalLabel.mas_bottom).mas_equalTo(2);
        make.left.mas_equalTo(headerImageView.mas_right).mas_equalTo(20);
    }];
    
    //学位标签
    UILabel *degreeLabel = [[UILabel alloc]init];
    //测试
    degreeLabel.text = @"教授";
    degreeLabel.backgroundColor = [UIColor redColor];
    [self.scrollView addSubview:degreeLabel];
    [degreeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(positionLabel.mas_bottom).mas_equalTo(2);
        make.left.mas_equalTo(headerImageView.mas_right).mas_equalTo(20);
    }];
    
    //关注按钮
    UIButton *attentionBtn = [[UIButton alloc]init];
    [attentionBtn setImage:[UIImage imageNamed:@"guanzhu_btn"] forState:UIControlStateNormal];
    [self.scrollView addSubview:attentionBtn];
    [attentionBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(degreeLabel.mas_bottom).mas_equalTo(10);
        make.left.mas_equalTo(headerImageView.mas_left);
        
        
    }];
    
    //分享按钮
    UIButton *shareBtn = [[UIButton alloc]init];
    [shareBtn setImage:[UIImage imageNamed:@"fenxiang_btn"] forState:UIControlStateNormal];
    [self.scrollView addSubview:shareBtn];
    [shareBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(degreeLabel.mas_bottom).mas_equalTo(10);
        make.right.mas_equalTo(self.view.mas_right).mas_equalTo(-20);
        
        
    }];

    //擅长病症图片
    UIImageView *shanchangImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"shanchangbingzheng"]];
    [self.scrollView addSubview:shanchangImageView];
    [shanchangImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(attentionBtn.mas_bottom).mas_equalTo(10);
        
    }];
    
    UILabel *detailLabel = [[UILabel alloc]init];
    detailLabel.multipleTouchEnabled = YES;
    detailLabel.numberOfLines = 0;
    
    detailLabel.text = @"张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三张三";
    detailLabel.backgroundColor = [UIColor yellowColor];
    [self.scrollView addSubview:detailLabel];
    [detailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(shanchangImageView.mas_bottom).mas_equalTo(10);
        make.left.mas_equalTo(10);
        make.width.mas_equalTo(300);
    }];
    
    
    //最底下的三个按钮
    
    UIButton *button1  = [[UIButton alloc]init];
    button1.backgroundColor = [UIColor whiteColor];
    [button1 setImage:[UIImage imageNamed:@"tuwen"] forState:UIControlStateNormal];
    [self.scrollView addSubview:button1];
    [button1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(detailLabel.mas_bottom).mas_equalTo(10);
        
        
    }];
    
    UIButton *button2  = [[UIButton alloc]init];
    button2.backgroundColor = [UIColor whiteColor];
    [button2 setImage:[UIImage imageNamed:@"dianhua"] forState:UIControlStateNormal];
    [self.scrollView addSubview:button2];
    [button2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(button1.mas_bottom).mas_equalTo(10);
    }];
    UIButton *button3  = [[UIButton alloc]init];
    button3.backgroundColor = [UIColor whiteColor];
    [button3 setImage:[UIImage imageNamed:@"yizhenfuwu"] forState:UIControlStateNormal];
    [self.scrollView addSubview:button3];
    [button3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(button2.mas_bottom).mas_equalTo(10);
    }];
    
    //让上面的控件强制绘制
    [self.view layoutIfNeeded];
    
    self.scrollView.alwaysBounceVertical = YES;
    self.scrollView.contentSize = CGSizeMake(0, button3.frame.origin.y + 64);
    self.scrollView.delegate = self;
    
    
}

@end
