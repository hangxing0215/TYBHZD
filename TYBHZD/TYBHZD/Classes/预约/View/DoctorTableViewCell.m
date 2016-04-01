//
//  DoctorTableViewCell.m
//  TYBHZD
//
//  Created by apple on 16/3/28.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import "DoctorTableViewCell.h"




@implementation DoctorTableViewCell

- (void)setDoctor:(Doctor *)doctor
{
    self.headerImageView.image = [UIImage imageNamed:doctor.headerImageName];
    self.doctorNameLabel.text = doctor.docName;
    self.positionLabel.text = doctor.position;
    self.hospitalLabel.text = doctor.hispital;
    self.isFreeLabel.hidden = ! doctor.isFree;
    self.hadAuthoredImageView.hidden = ! doctor.hadAuthored;
    self.detailLabel.text = doctor.detail;
    self.priceLabel.text = [NSString stringWithFormat:@"%lu",doctor.price];
    
    
   
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
