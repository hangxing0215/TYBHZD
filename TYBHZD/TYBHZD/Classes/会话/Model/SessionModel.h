//
//  SessionModel.h
//  TYBHZD
//
//  Created by apple on 16/3/29.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SessionModel : NSObject
//图像的名字
@property (nonatomic,strong)NSString *headerImageName;
//发送者名称
@property (nonatomic,strong)NSString *name;
//发送的时间
@property (nonatomic,strong)NSString *sendTime;
//详细信息
@property (nonatomic,strong)NSString *detail;




+ (NSArray *)demoData;
@end
