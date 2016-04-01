//
//  Doctor.m
//  TYBHZD
//
//  Created by apple on 16/3/28.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initwithHeaderImageName:(NSString *)imageName docName:(NSString *)docName position:(NSString *)position hispital:(NSString *)hospital detail:(NSString *)detail hadAuthored:(BOOL)hadAuthored isFree:(BOOL)isFree price:(NSInteger)price
{
    
    if (self == [super init])
    {
        self.headerImageName = imageName;
        self.docName = docName;
        self.position = position;
        self.hispital = hospital;
        self.detail = detail;
        self.hadAuthored = hadAuthored;
        self.isFree = isFree;
        self.price = price;
        
    }
    
    return self;
}

@end
