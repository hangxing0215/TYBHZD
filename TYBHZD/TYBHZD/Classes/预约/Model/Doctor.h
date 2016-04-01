//
//  Doctor.h
//  TYBHZD
//
//  Created by apple on 16/3/28.
//  Copyright © 2016年 qpw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Doctor : NSObject

@property (nonatomic,strong)NSString *headerImageName;
@property (nonatomic,strong)NSString *docName;
@property (nonatomic,strong)NSString *position;
@property (nonatomic,strong)NSString *hispital;
@property (nonatomic,strong)NSString *detail;
@property (nonatomic,assign)BOOL hadAuthored;
@property (nonatomic,assign)BOOL isFree;
@property (nonatomic,assign)NSInteger price;

- (instancetype)initwithHeaderImageName:(NSString *)imageName docName:(NSString *)docName position:(NSString *)position hispital:(NSString *)hospital detail:(NSString *)detail hadAuthored:(BOOL)hadAuthored isFree:(BOOL)isFree price:(NSInteger)price;

@end
