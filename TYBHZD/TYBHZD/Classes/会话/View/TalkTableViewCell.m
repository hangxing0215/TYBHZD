//
//  TalkTableViewCell.m
//  TYBHZD
//
//  Created by apple on 16/3/29.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import "TalkTableViewCell.h"
#import "MessageView.h"
@interface TalkTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;
@property (weak, nonatomic) IBOutlet MessageView *backView;
@end
@implementation TalkTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
     self.backView.message = @"今天是个好日子，今天是个好日子";
}


@end
