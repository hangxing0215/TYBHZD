//
//  DoctorTableViewCell.h
//  TYBHZD
//
//  Created by apple on 16/3/28.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Doctor.h"
@interface DoctorTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;
@property (weak, nonatomic) IBOutlet UILabel *doctorNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *positionLabel;

@property (weak, nonatomic) IBOutlet UIImageView *hadAuthoredImageView;
@property (weak, nonatomic) IBOutlet UILabel *hospitalLabel;

@property (weak, nonatomic) IBOutlet UIImageView *isFreeLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@property (nonatomic,strong)Doctor *doctor;

@end
