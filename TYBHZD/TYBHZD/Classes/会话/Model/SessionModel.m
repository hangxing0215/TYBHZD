//
//  SessionModel.m
//  TYBHZD
//
//  Created by apple on 16/3/29.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import "SessionModel.h"

@implementation SessionModel

+ (NSArray *)demoData
{
    SessionModel *session1 = [[SessionModel alloc]init];
    session1.headerImageName = @"taoyibao.jpg";
    session1.name = @"涛医宝小助手";
    session1.sendTime = @"2016-03-08 10:15";
    session1.detail = @"您已注册成功，请及时补充用户资料，欢迎使用涛医宝！寻医咨询无烦恼！可以查看使用手册，快速了解APP使用。";
    SessionModel *session2 = [[SessionModel alloc]init];
    session2.headerImageName = @"taoyibao.jpg";
    session2.name = @"涛医宝小助手";
    session2.sendTime = @"2016-03-08 10:15";
    session2.detail = @"您已注册成功，请及时补充用户资料，欢迎使用涛医宝！寻医咨询无烦恼！可以查看使用手册，快速了解APP使用。";
    SessionModel *session3 = [[SessionModel alloc]init];
    session3.headerImageName = @"taoyibao.jpg";
    session3.name = @"涛医宝小助手";
    session3.sendTime = @"2016-03-08 10:15";
    session3.detail = @"您已注册成功，请及时补充用户资料，欢迎使用涛医宝！寻医咨询无烦恼！可以查看使用手册，快速了解APP使用。";
    
    NSMutableArray *allData = [NSMutableArray array];
    [allData addObject:session1];
    [allData addObject:session2];
    [allData addObject:session3];
    
    return [allData copy];
}

@end
